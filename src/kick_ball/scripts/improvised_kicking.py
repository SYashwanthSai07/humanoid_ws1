#!/usr/bin/env python3
# encoding: utf-8
"""
Red Ball Detection and Kicking Node for Ainex Humanoid Robot in Gazebo
Detects red ball, navigates toward it, and kicks it
"""

import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image
from std_msgs import msg as std_msg
from ainex_kinematics.gait_manager import GaitManager

def imgmsg_to_cv2(img_msg):
    """Convert ROS Image message to OpenCV image"""
    if img_msg.encoding == "rgb8":
        img = np.frombuffer(img_msg.data, dtype=np.uint8).reshape(img_msg.height, img_msg.width, 3)
        img = cv2.cvtColor(img, cv2.COLOR_RGB2BGR)
    elif img_msg.encoding == "bgr8":
        img = np.frombuffer(img_msg.data, dtype=np.uint8).reshape(img_msg.height, img_msg.width, 3)
    elif img_msg.encoding == "mono8":
        img = np.frombuffer(img_msg.data, dtype=np.uint8).reshape(img_msg.height, img_msg.width)
    else:
        rospy.logerr(f"Unsupported encoding: {img_msg.encoding}")
        return None
    return img

def cv2_to_imgmsg(cv_image, encoding="bgr8"):
    """Convert OpenCV image to ROS Image message"""
    img_msg = Image()
    img_msg.height = cv_image.shape[0]
    img_msg.width = cv_image.shape[1]
    img_msg.encoding = encoding
    img_msg.is_bigendian = 0
    img_msg.step = cv_image.shape[1] * 3 if encoding == "bgr8" else cv_image.shape[1]
    img_msg.data = cv_image.tobytes()
    return img_msg

class KickBallNode:
    def __init__(self):
        rospy.init_node('improvised_kicking_node', anonymous=True)
        rospy.loginfo("=" * 60)
        rospy.loginfo("Red Ball Kicking Demo - Initializing...")
        rospy.loginfo("=" * 60)
        
        # Load parameters
        self.image_topic = rospy.get_param('~image_topic', '/camera/image_raw')
        self.image_process_size = rospy.get_param('~image_process_size', [160, 120])
        
        # Red ball HSV ranges (two ranges because red wraps around in HSV)
        self.lower_red1 = np.array(rospy.get_param('~lower_red1', [0, 100, 100]))
        self.upper_red1 = np.array(rospy.get_param('~upper_red1', [10, 255, 255]))
        self.lower_red2 = np.array(rospy.get_param('~lower_red2', [160, 100, 100]))
        self.upper_red2 = np.array(rospy.get_param('~upper_red2', [180, 255, 255]))
        
        self.min_ball_area = rospy.get_param('~min_ball_area', 50)
        self.max_ball_area = rospy.get_param('~max_ball_area', 19200)
        
        # ROI for ball detection
        self.ball_roi = rospy.get_param('~ball_roi', [0.2, 0.9, 0.1, 0.9])
        
        # Walking parameters
        self.approach_speed = rospy.get_param('~approach_speed', 0.012)
        self.turn_speed = rospy.get_param('~turn_speed', 0.008)
        self.max_turn_angle = rospy.get_param('~max_turn_angle', 10)
        self.approach_threshold = rospy.get_param('~approach_threshold', 80)
        
        # Kicking parameters
        self.kick_forward_speed = rospy.get_param('~kick_forward_speed', 0.02)
        self.kick_duration = rospy.get_param('~kick_duration', 0.5)
        
        # Head control parameters
        self.head_pan_init = rospy.get_param('~head_pan_init', 500)
        self.head_tilt_init = rospy.get_param('~head_tilt_init', 350)  # Looking down
        self.head_tilt_min = 350   # Most downward (when ball very close)
        self.head_tilt_max = 450   # Looking more forward (when ball far)
        self.current_head_tilt = self.head_tilt_init
        
        # State variables
        self.current_image = None
        self.ball_detected = False
        self.ball_center_x = 0
        self.ball_center_y = 0
        self.ball_radius = 0
        self.is_kicking = False
        
        # Ball tracking memory
        self.last_ball_x = 0
        self.last_ball_y = 0
        self.last_ball_radius = 0
        self.ball_lost_count = 0
        self.max_ball_lost_frames = 15  # Frames to remember ball position
        self.was_approaching = False  # Flag to track if we were approaching
        
        # Wait for Gazebo to stabilize
        rospy.loginfo("Waiting for Gazebo to stabilize...")
        rospy.sleep(3.0)
        
        # Initialize GaitManager
        rospy.loginfo("Initializing GaitManager...")
        self.gait_manager = GaitManager()
        rospy.sleep(0.5)
        
        # Configure walking parameters (from line_follower)
        self.gait_param = self.gait_manager.get_gait_param()
        self.gait_param['body_height'] = 0.025
        self.gait_param['step_height'] = 0.015
        self.gait_param['hip_pitch_offset'] = 15
        
        # Note: Head servo control not available in Gazebo simulation
        # In real robot, would use MotionManager here
        
        # Configure additional gait parameters
        self.gait_param['pelvis_offset'] = 0
        
        # Update pose
        self.gait_manager.update_pose(self.gait_param)
        rospy.sleep(1.0)
        
        # DSP parameters for stable walking
        self.dsp = [1500, 0.3, 0.035]
        
        # Publishers
        self.debug_image_pub = rospy.Publisher('/improvised_kicking/debug_image', Image, queue_size=1)
        
        # Subscriber
        self.image_sub = rospy.Subscriber(
            self.image_topic, Image, self.image_callback,
            queue_size=1, buff_size=2**24
        )
        
        rospy.loginfo("✅ Kick Ball Node Ready!")
        rospy.loginfo("   Listening to: %s" % self.image_topic)
        rospy.loginfo("   Publishing debug to: /improvised_kicking/debug_image")
        rospy.loginfo("=" * 60)
        
    def image_callback(self, msg):
        """Store latest image"""
        self.current_image = msg
        
    def detect_red_ball(self, image):
        """
        Detect red ball in image using HSV color space
        Returns: (ball_detected, center_x, center_y, radius, debug_image)
        """
        height, width = self.image_process_size[1], self.image_process_size[0]
        resized = cv2.resize(image, (width, height))
        debug_image = resized.copy()
        
        # Convert to HSV
        hsv = cv2.cvtColor(resized, cv2.COLOR_BGR2HSV)
        
        # Create masks for red color (two ranges)
        mask1 = cv2.inRange(hsv, self.lower_red1, self.upper_red1)
        mask2 = cv2.inRange(hsv, self.lower_red2, self.upper_red2)
        mask = cv2.bitwise_or(mask1, mask2)
        
        ball_detected = False
        center_x = 0
        center_y = 0
        radius = 0
        
        # Apply ROI
        roi = self.ball_roi
        y_min = int(roi[0] * height)
        y_max = int(roi[1] * height)
        x_min = int(roi[2] * width)
        x_max = int(roi[3] * width)
        
        # Draw ROI box (green)
        cv2.rectangle(debug_image, (x_min, y_min), (x_max, y_max), (0, 255, 0), 1)
        
        # Extract ROI mask
        roi_mask = mask[y_min:y_max, x_min:x_max]
        
        # Find contours
        contour_result = cv2.findContours(roi_mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        if len(contour_result) == 3:
            _, contours, _ = contour_result
        else:
            contours, _ = contour_result
        
        # Find largest valid contour (the ball)
        if contours:
            largest_contour = max(contours, key=cv2.contourArea)
            contour_area = cv2.contourArea(largest_contour)
            
            if self.min_ball_area < contour_area < self.max_ball_area:
                # Get enclosing circle
                ((cx, cy), r) = cv2.minEnclosingCircle(largest_contour)
                
                # Convert back to full image coordinates
                center_x = int(cx) + x_min
                center_y = int(cy) + y_min
                radius = int(r)
                
                ball_detected = True
                
                # Draw red circle around ball
                cv2.circle(debug_image, (center_x, center_y), radius, (0, 0, 255), 2)
                # Draw center point
                cv2.circle(debug_image, (center_x, center_y), 3, (0, 255, 255), -1)
                
                # Draw crosshair at center
                cv2.line(debug_image, (center_x - 10, center_y), (center_x + 10, center_y), (0, 255, 255), 1)
                cv2.line(debug_image, (center_x, center_y - 10), (center_x, center_y + 10), (0, 255, 255), 1)
                
                # Add info text
                info_text = f"Ball: R={radius}px"
                cv2.putText(debug_image, info_text, (5, 15),
                           cv2.FONT_HERSHEY_SIMPLEX, 0.4, (0, 255, 0), 1)
        
        # Add detection status
        status_text = "BALL DETECTED" if ball_detected else "SEARCHING..."
        status_color = (0, 255, 0) if ball_detected else (0, 0, 255)
        cv2.putText(debug_image, status_text, (5, height - 8),
                   cv2.FONT_HERSHEY_SIMPLEX, 0.4, status_color, 1)
        
        return ball_detected, center_x, center_y, radius, debug_image
    
    def calculate_turn_angle(self, ball_x, image_width):
        """Calculate turn angle to center the ball"""
        center_x = image_width / 2.0
        error = ball_x - center_x
        
        # Dead zone
        if abs(error) < 5:
            return 0
        
        # Proportional control
        turn_angle = (error / center_x) * self.max_turn_angle
        
        # Limit turn angle
        if turn_angle > self.max_turn_angle:
            turn_angle = self.max_turn_angle
        elif turn_angle < -self.max_turn_angle:
            turn_angle = -self.max_turn_angle
            
        return turn_angle
    
    def update_head_tilt(self, ball_y, ball_radius):
        """
        Dynamically adjust head tilt based on ball position in image
        Note: Not functional in Gazebo - would control servo ID 24 on real robot
        """
        # This function is a placeholder for real robot implementation
        # In Gazebo, the camera is fixed
        pass
    
    def kick_ball(self):
        """Execute kick motion - fast forward walk into the ball"""
        rospy.loginfo("⚽ ⚽ ⚽ KICKING THE BALL NOW! ⚽ ⚽ ⚽")
        self.is_kicking = True
        
        # Fast forward motion to push the ball (step_num=5 for 5 strong kicks)
        self.gait_manager.set_step(
            self.dsp,
            self.kick_forward_speed,  # Fast forward speed (0.02m)
            0,
            0,
            self.gait_param,
            arm_swap=0,
            step_num=5  # 5 kicking steps
        )
        
        rospy.sleep(1.5)  # Wait for kick to complete
        
        # Stop after kick
        self.gait_manager.stop()
        rospy.sleep(0.5)
        
        # Reset tracking state
        self.is_kicking = False
        self.was_approaching = False
        self.ball_lost_count = 0
        rospy.loginfo("✅ Kick complete! Searching for ball again...")
    
    def control_loop(self):
        """Main control loop for ball tracking and kicking"""
        rate = rospy.Rate(10)  # 10 Hz
        
        rospy.loginfo("\n🎯 Starting ball tracking and kicking...")
        rospy.loginfo("   Press Ctrl+C to stop\n")
        
        while not rospy.is_shutdown():
            if self.current_image is None:
                rate.sleep()
                continue
            
            # Convert ROS image to OpenCV
            cv_image = imgmsg_to_cv2(self.current_image)
            if cv_image is None:
                rate.sleep()
                continue
            
            # Detect red ball
            ball_detected, ball_x, ball_y, ball_radius, debug_image = self.detect_red_ball(cv_image)
            
            # Publish debug image for visualization
            if self.debug_image_pub.get_num_connections() > 0:
                debug_msg = cv2_to_imgmsg(debug_image)
                self.debug_image_pub.publish(debug_msg)
            
            if ball_detected:
                # Ball is visible - update tracking
                self.ball_center_x = ball_x
                self.ball_center_y = ball_y
                self.ball_radius = ball_radius
                self.last_ball_x = ball_x
                self.last_ball_y = ball_y
                self.last_ball_radius = ball_radius
                self.ball_lost_count = 0
            else:
                # Ball not visible - increment lost counter
                self.ball_lost_count += 1
            
            # Control logic
            if not self.is_kicking:
                if ball_detected:
                    # Ball is visible
                    # Check if ball is close enough to kick (max observed ~11px)
                    if ball_radius >= 10:
                        rospy.loginfo(f"⚽ Ball close (R={ball_radius}px) - Taking 8 approach steps then KICK!")
                        self.was_approaching = True
                        # Take 8 steps forward to get closer
                        self.gait_manager.set_step(
                            self.dsp,
                            self.approach_speed,
                            0, 0,
                            self.gait_param,
                            arm_swap=0,
                            step_num=8  # 8 steps forward
                        )
                        rospy.sleep(2.0)  # Wait for steps to complete
                        self.kick_ball()
                    else:
                        # Calculate turn angle to center ball
                        turn_angle = self.calculate_turn_angle(ball_x, self.image_process_size[0])
                        
                        # Choose speed based on turn angle
                        if abs(turn_angle) > 6:
                            forward_speed = self.turn_speed
                        else:
                            forward_speed = self.approach_speed
                        
                        # Mark that we're approaching when getting close
                        if ball_radius >= 8:  # Getting close (max is ~11px)
                            self.was_approaching = True
                        
                        # Walk toward ball
                        self.gait_manager.set_step(
                            self.dsp,
                            forward_speed,
                            0,
                            int(-turn_angle),  # Negative for correct direction
                            self.gait_param,
                            arm_swap=0,
                            step_num=0
                        )
                        
                        rospy.loginfo_throttle(1.0, 
                            f"🎯 Approaching ball: R={ball_radius}px, Turn={-turn_angle:.1f}°, Speed={forward_speed:.3f}m")
                
                elif self.was_approaching and self.ball_lost_count < self.max_ball_lost_frames:
                    # Ball recently lost but we were approaching it
                    # It's likely very close (below camera view) - KICK IT!
                    if self.last_ball_radius >= 8:  # Was close when lost (max ~11px)
                        rospy.loginfo(f"⚽ Ball lost but was close (last R={self.last_ball_radius}px) - KICKING NOW!")
                        self.kick_ball()
                    else:
                        # Continue forward slowly using last known direction
                        last_turn = self.calculate_turn_angle(self.last_ball_x, self.image_process_size[0])
                        rospy.loginfo_throttle(1.0, 
                            f"📍 Ball lost but continuing (lost {self.ball_lost_count} frames, last R={self.last_ball_radius}px)")
                        
                        self.gait_manager.set_step(
                            self.dsp,
                            self.turn_speed,  # Slow forward
                            0,
                            int(-last_turn / 2),  # Half the last turn angle
                            self.gait_param,
                            arm_swap=0,
                            step_num=0
                        )
                
                else:
                    # Ball lost for too long or never was approaching - search
                    self.was_approaching = False
                    rospy.loginfo_throttle(2.0, "🔍 Searching for ball...")
                    self.gait_manager.set_step(
                        self.dsp,
                        0,        # No forward motion
                        0,
                        5,        # Slow rotation to search
                        self.gait_param,
                        arm_swap=0,
                        step_num=0
                    )
            
            rate.sleep()
    
    def run(self):
        """Main execution"""
        try:
            self.control_loop()
        except rospy.ROSInterruptException:
            rospy.loginfo("Kick ball node interrupted")
        except Exception as e:
            rospy.logerr(f"Error in kick ball node: {e}")
            import traceback
            traceback.print_exc()
        finally:
            rospy.loginfo("Stopping robot...")
            self.gait_manager.stop()
            rospy.sleep(0.5)
            rospy.loginfo("✅ Robot stopped")

if __name__ == '__main__':
    try:
        node = KickBallNode()
        node.run()
    except rospy.ROSInterruptException:
        pass

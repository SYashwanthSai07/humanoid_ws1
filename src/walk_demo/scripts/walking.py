#!/usr/bin/env python3
# encoding: utf-8
"""
Walking Demo for Ainex Humanoid Robot in Gazebo
Continuous walking using optimized parameters from line_follower
"""

import time
import rospy
from ainex_kinematics.gait_manager import GaitManager

class WalkingDemo:
    def __init__(self):
        rospy.init_node('walking_demo', anonymous=True)
        rospy.loginfo("=" * 50)
        rospy.loginfo("Walking Demo - Initializing...")
        rospy.loginfo("=" * 50)
        
        # Wait for Gazebo and controllers to be ready
        rospy.loginfo("Waiting for robot to stabilize in Gazebo...")
        rospy.sleep(3.0)
        
        # Initialize GaitManager
        rospy.loginfo("Initializing GaitManager...")
        self.gait_manager = GaitManager()
        rospy.sleep(0.5)
        
        # Configure optimized walking parameters (from line_follower)
        rospy.loginfo("Configuring walking parameters...")
        
        # Get base gait parameters
        self.gait_param = self.gait_manager.get_gait_param()
        self.gait_param['body_height'] = 0.025          # init_z_offset
        self.gait_param['step_height'] = 0.015          # z_move_amplitude
        self.gait_param['hip_pitch_offset'] = 15        # hip_pitch_offset
        self.gait_param['z_swap_amplitude'] = 0.006     # z_swap_amplitude
        self.gait_param['pelvis_offset'] = 0            # pelvis_offset
        
        # Update the pose with optimized parameters
        self.gait_manager.update_pose(self.gait_param)
        rospy.sleep(1.0)
        
        # DSP (Double Support Phase) parameters: [period_ms, dsp_ratio, y_swap_amplitude]
        # Optimized for Gazebo simulation
        self.dsp = [1500, 0.3, 0.035]
        
        # Walking parameters
        self.forward_speed = 0.015      # 1.5cm per step - stable forward speed
        self.max_turn_angle = 8         # Maximum turn angle in degrees
        
        rospy.loginfo("✅ Walking Demo Ready!")
        rospy.loginfo("   Forward Speed: %.3f m/step" % self.forward_speed)
        rospy.loginfo("   DSP: %s" % self.dsp)
        rospy.loginfo("=" * 50)
        
    def walk_continuously(self):
        """Walk forward continuously using optimized parameters"""
        
        rospy.loginfo("\n🚶 Starting Continuous Walking...")
        rospy.loginfo("   Press Ctrl+C to stop")
        rospy.loginfo("=" * 50)
        
        # Start walking forward with optimized parameters
        rospy.loginfo("\n📍 Walking Forward Continuously")
        rospy.loginfo("   Using set_step() with DSP: %s" % self.dsp)
        rospy.loginfo("   Forward speed: %.3f m" % self.forward_speed)
        
        # Use set_step for continuous walking (similar to line_follower)
        self.gait_manager.set_step(
            self.dsp,                    # [1500, 0.3, 0.035] - optimized for Gazebo
            self.forward_speed,          # x_amplitude (meters)
            0,                           # y_amplitude (meters)
            0,                           # rotation_angle (degrees)
            self.gait_param,             # walking parameters
            arm_swap=0,                  # arm swing disabled in simulation
            step_num=0                   # 0 = continuous walking
        )
        
        rospy.loginfo("✅ Robot is now walking continuously!")
        rospy.loginfo("   The robot will walk until you press Ctrl+C")
        
        # Keep the node alive and walking
        rate = rospy.Rate(10)  # 10 Hz
        try:
            while not rospy.is_shutdown():
                rate.sleep()
        except rospy.ROSInterruptException:
            rospy.loginfo("\n⏹  Stopping requested...")
        
    def run(self):
        """Main execution loop"""
        try:
            self.walk_continuously()
            
        except rospy.ROSInterruptException:
            rospy.loginfo("Walking demo interrupted by user")
        except Exception as e:
            rospy.logerr(f"Error during walking demo: {e}")
            import traceback
            traceback.print_exc()
        finally:
            rospy.loginfo("Stopping robot...")
            self.gait_manager.stop()
            rospy.sleep(0.5)
            rospy.loginfo("✅ Robot stopped")

if __name__ == '__main__':
    try:
        demo = WalkingDemo()
        demo.run()
    except rospy.ROSInterruptException:
        pass

;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::SetBusServosPosition)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'SetBusServosPosition (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::SETBUSSERVOSPOSITION")
  (make-package "ROS_ROBOT_CONTROLLER::SETBUSSERVOSPOSITION"))

(in-package "ROS")
;;//! \htmlinclude SetBusServosPosition.msg.html


(defclass ros_robot_controller::SetBusServosPosition
  :super ros::object
  :slots (_duration _position ))

(defmethod ros_robot_controller::SetBusServosPosition
  (:init
   (&key
    ((:duration __duration) 0.0)
    ((:position __position) (let (r) (dotimes (i 0) (push (instance ros_robot_controller::BusServoPosition :init) r)) r))
    )
   (send-super :init)
   (setq _duration (float __duration))
   (setq _position __position)
   self)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; float64 _duration
    8
    ;; ros_robot_controller/BusServoPosition[] _position
    (apply #'+ (send-all _position :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_robot_controller/BusServoPosition[] _position
     (write-long (length _position) s)
     (dolist (elem _position)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_robot_controller/BusServoPosition[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (let (r) (dotimes (i n) (push (instance ros_robot_controller::BusServoPosition :init) r)) r))
     (dolist (elem- _position)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_robot_controller::SetBusServosPosition :md5sum-) "ed584daec2751e0a3aa8679e2d6197b3")
(setf (get ros_robot_controller::SetBusServosPosition :datatype-) "ros_robot_controller/SetBusServosPosition")
(setf (get ros_robot_controller::SetBusServosPosition :definition-)
      "float64 duration
ros_robot_controller/BusServoPosition[] position

================================================================================
MSG: ros_robot_controller/BusServoPosition
uint16 id
uint16 position

")



(provide :ros_robot_controller/SetBusServosPosition "ed584daec2751e0a3aa8679e2d6197b3")



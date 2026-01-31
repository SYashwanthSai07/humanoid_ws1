;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::RGBsState)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'RGBsState (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::RGBSSTATE")
  (make-package "ROS_ROBOT_CONTROLLER::RGBSSTATE"))

(in-package "ROS")
;;//! \htmlinclude RGBsState.msg.html


(defclass ros_robot_controller::RGBsState
  :super ros::object
  :slots (_data ))

(defmethod ros_robot_controller::RGBsState
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push (instance ros_robot_controller::RGBState :init) r)) r))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; ros_robot_controller/RGBState[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_robot_controller/RGBState[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_robot_controller/RGBState[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance ros_robot_controller::RGBState :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_robot_controller::RGBsState :md5sum-) "cb5dfd3060b85c0fec6981d83d7c1830")
(setf (get ros_robot_controller::RGBsState :datatype-) "ros_robot_controller/RGBsState")
(setf (get ros_robot_controller::RGBsState :definition-)
      "ros_robot_controller/RGBState[] data

================================================================================
MSG: ros_robot_controller/RGBState
uint8 id
uint8 r
uint8 g
uint8 b

")



(provide :ros_robot_controller/RGBsState "cb5dfd3060b85c0fec6981d83d7c1830")



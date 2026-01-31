;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::BusServoPosition)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'BusServoPosition (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::BUSSERVOPOSITION")
  (make-package "ROS_ROBOT_CONTROLLER::BUSSERVOPOSITION"))

(in-package "ROS")
;;//! \htmlinclude BusServoPosition.msg.html


(defclass ros_robot_controller::BusServoPosition
  :super ros::object
  :slots (_id _position ))

(defmethod ros_robot_controller::BusServoPosition
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position (round __position))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; uint16 _id
    2
    ;; uint16 _position
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _id
       (write-word _id s)
     ;; uint16 _position
       (write-word _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _position
     (setq _position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ros_robot_controller::BusServoPosition :md5sum-) "f6c99c1d923607c02ca92f7b01135d3e")
(setf (get ros_robot_controller::BusServoPosition :datatype-) "ros_robot_controller/BusServoPosition")
(setf (get ros_robot_controller::BusServoPosition :definition-)
      "uint16 id
uint16 position

")



(provide :ros_robot_controller/BusServoPosition "f6c99c1d923607c02ca92f7b01135d3e")



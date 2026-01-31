;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::MotorState)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'MotorState (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::MOTORSTATE")
  (make-package "ROS_ROBOT_CONTROLLER::MOTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorState.msg.html


(defclass ros_robot_controller::MotorState
  :super ros::object
  :slots (_id _rps _duty ))

(defmethod ros_robot_controller::MotorState
  (:init
   (&key
    ((:id __id) 0)
    ((:rps __rps) 0.0)
    ((:duty __duty) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _rps (float __rps))
   (setq _duty (round __duty))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:rps
   (&optional __rps)
   (if __rps (setq _rps __rps)) _rps)
  (:duty
   (&optional __duty)
   (if __duty (setq _duty __duty)) _duty)
  (:serialization-length
   ()
   (+
    ;; uint16 _id
    2
    ;; float64 _rps
    8
    ;; int8 _duty
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _id
       (write-word _id s)
     ;; float64 _rps
       (sys::poke _rps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _duty
       (write-byte _duty s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _rps
     (setq _rps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _duty
     (setq _duty (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _duty 127) (setq _duty (- _duty 256)))
   ;;
   self)
  )

(setf (get ros_robot_controller::MotorState :md5sum-) "d79026762feb15b0fd2b852459fe5888")
(setf (get ros_robot_controller::MotorState :datatype-) "ros_robot_controller/MotorState")
(setf (get ros_robot_controller::MotorState :definition-)
      "uint16 id
float64 rps
int8 duty

")



(provide :ros_robot_controller/MotorState "d79026762feb15b0fd2b852459fe5888")



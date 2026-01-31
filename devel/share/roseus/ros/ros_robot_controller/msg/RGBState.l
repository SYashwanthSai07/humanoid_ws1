;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::RGBState)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'RGBState (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::RGBSTATE")
  (make-package "ROS_ROBOT_CONTROLLER::RGBSTATE"))

(in-package "ROS")
;;//! \htmlinclude RGBState.msg.html


(defclass ros_robot_controller::RGBState
  :super ros::object
  :slots (_id _r _g _b ))

(defmethod ros_robot_controller::RGBState
  (:init
   (&key
    ((:id __id) 0)
    ((:r __r) 0)
    ((:g __g) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _r (round __r))
   (setq _g (round __g))
   (setq _b (round __b))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint8 _r
    1
    ;; uint8 _g
    1
    ;; uint8 _b
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _r
       (write-byte _r s)
     ;; uint8 _g
       (write-byte _g s)
     ;; uint8 _b
       (write-byte _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _r
     (setq _r (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g
     (setq _g (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _b
     (setq _b (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_robot_controller::RGBState :md5sum-) "343e67bfed955dda24bc6fa95587f87d")
(setf (get ros_robot_controller::RGBState :datatype-) "ros_robot_controller/RGBState")
(setf (get ros_robot_controller::RGBState :definition-)
      "uint8 id
uint8 r
uint8 g
uint8 b

")



(provide :ros_robot_controller/RGBState "343e67bfed955dda24bc6fa95587f87d")



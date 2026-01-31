;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::OLEDState)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'OLEDState (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::OLEDSTATE")
  (make-package "ROS_ROBOT_CONTROLLER::OLEDSTATE"))

(in-package "ROS")
;;//! \htmlinclude OLEDState.msg.html


(defclass ros_robot_controller::OLEDState
  :super ros::object
  :slots (_index _text ))

(defmethod ros_robot_controller::OLEDState
  (:init
   (&key
    ((:index __index) 0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _text (string __text))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; uint8 _index
    1
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _index
       (write-byte _index s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _index
     (setq _index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_robot_controller::OLEDState :md5sum-) "205a1c2cc7c3057aaccb3f8bbf12e142")
(setf (get ros_robot_controller::OLEDState :datatype-) "ros_robot_controller/OLEDState")
(setf (get ros_robot_controller::OLEDState :definition-)
      "uint8 index
string text

")



(provide :ros_robot_controller/OLEDState "205a1c2cc7c3057aaccb3f8bbf12e142")



;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::GetWalkingState)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'GetWalkingState (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::GETWALKINGSTATE")
  (make-package "AINEX_INTERFACES::GETWALKINGSTATE"))
(unless (find-package "AINEX_INTERFACES::GETWALKINGSTATEREQUEST")
  (make-package "AINEX_INTERFACES::GETWALKINGSTATEREQUEST"))
(unless (find-package "AINEX_INTERFACES::GETWALKINGSTATERESPONSE")
  (make-package "AINEX_INTERFACES::GETWALKINGSTATERESPONSE"))

(in-package "ROS")





(defclass ainex_interfaces::GetWalkingStateRequest
  :super ros::object
  :slots ())

(defmethod ainex_interfaces::GetWalkingStateRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ainex_interfaces::GetWalkingStateResponse
  :super ros::object
  :slots (_state _message ))

(defmethod ainex_interfaces::GetWalkingStateResponse
  (:init
   (&key
    ((:state __state) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _state __state)
   (setq _message (string __message))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ainex_interfaces::GetWalkingState
  :super ros::object
  :slots ())

(setf (get ainex_interfaces::GetWalkingState :md5sum-) "603c04acee08adec382920a1d1b74bb8")
(setf (get ainex_interfaces::GetWalkingState :datatype-) "ainex_interfaces/GetWalkingState")
(setf (get ainex_interfaces::GetWalkingState :request) ainex_interfaces::GetWalkingStateRequest)
(setf (get ainex_interfaces::GetWalkingState :response) ainex_interfaces::GetWalkingStateResponse)

(defmethod ainex_interfaces::GetWalkingStateRequest
  (:response () (instance ainex_interfaces::GetWalkingStateResponse :init)))

(setf (get ainex_interfaces::GetWalkingStateRequest :md5sum-) "603c04acee08adec382920a1d1b74bb8")
(setf (get ainex_interfaces::GetWalkingStateRequest :datatype-) "ainex_interfaces/GetWalkingStateRequest")
(setf (get ainex_interfaces::GetWalkingStateRequest :definition-)
      "---
bool state
string message


")

(setf (get ainex_interfaces::GetWalkingStateResponse :md5sum-) "603c04acee08adec382920a1d1b74bb8")
(setf (get ainex_interfaces::GetWalkingStateResponse :datatype-) "ainex_interfaces/GetWalkingStateResponse")
(setf (get ainex_interfaces::GetWalkingStateResponse :definition-)
      "---
bool state
string message


")



(provide :ainex_interfaces/GetWalkingState "603c04acee08adec382920a1d1b74bb8")



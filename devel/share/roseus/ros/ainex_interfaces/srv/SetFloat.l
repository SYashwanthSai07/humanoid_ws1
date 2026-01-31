;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::SetFloat)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'SetFloat (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::SETFLOAT")
  (make-package "AINEX_INTERFACES::SETFLOAT"))
(unless (find-package "AINEX_INTERFACES::SETFLOATREQUEST")
  (make-package "AINEX_INTERFACES::SETFLOATREQUEST"))
(unless (find-package "AINEX_INTERFACES::SETFLOATRESPONSE")
  (make-package "AINEX_INTERFACES::SETFLOATRESPONSE"))

(in-package "ROS")





(defclass ainex_interfaces::SetFloatRequest
  :super ros::object
  :slots (_data ))

(defmethod ainex_interfaces::SetFloatRequest
  (:init
   (&key
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ainex_interfaces::SetFloatResponse
  :super ros::object
  :slots (_success _message ))

(defmethod ainex_interfaces::SetFloatResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ainex_interfaces::SetFloat
  :super ros::object
  :slots ())

(setf (get ainex_interfaces::SetFloat :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get ainex_interfaces::SetFloat :datatype-) "ainex_interfaces/SetFloat")
(setf (get ainex_interfaces::SetFloat :request) ainex_interfaces::SetFloatRequest)
(setf (get ainex_interfaces::SetFloat :response) ainex_interfaces::SetFloatResponse)

(defmethod ainex_interfaces::SetFloatRequest
  (:response () (instance ainex_interfaces::SetFloatResponse :init)))

(setf (get ainex_interfaces::SetFloatRequest :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get ainex_interfaces::SetFloatRequest :datatype-) "ainex_interfaces/SetFloatRequest")
(setf (get ainex_interfaces::SetFloatRequest :definition-)
      "float64 data
---
bool success
string message

")

(setf (get ainex_interfaces::SetFloatResponse :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get ainex_interfaces::SetFloatResponse :datatype-) "ainex_interfaces/SetFloatResponse")
(setf (get ainex_interfaces::SetFloatResponse :definition-)
      "float64 data
---
bool success
string message

")



(provide :ainex_interfaces/SetFloat "3f47c51e9da05852f0d7f484f9279955")



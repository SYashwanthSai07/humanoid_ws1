;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::SetString)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'SetString (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::SETSTRING")
  (make-package "AINEX_INTERFACES::SETSTRING"))
(unless (find-package "AINEX_INTERFACES::SETSTRINGREQUEST")
  (make-package "AINEX_INTERFACES::SETSTRINGREQUEST"))
(unless (find-package "AINEX_INTERFACES::SETSTRINGRESPONSE")
  (make-package "AINEX_INTERFACES::SETSTRINGRESPONSE"))

(in-package "ROS")





(defclass ainex_interfaces::SetStringRequest
  :super ros::object
  :slots (_data ))

(defmethod ainex_interfaces::SetStringRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ainex_interfaces::SetStringResponse
  :super ros::object
  :slots (_success _message ))

(defmethod ainex_interfaces::SetStringResponse
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

(defclass ainex_interfaces::SetString
  :super ros::object
  :slots ())

(setf (get ainex_interfaces::SetString :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get ainex_interfaces::SetString :datatype-) "ainex_interfaces/SetString")
(setf (get ainex_interfaces::SetString :request) ainex_interfaces::SetStringRequest)
(setf (get ainex_interfaces::SetString :response) ainex_interfaces::SetStringResponse)

(defmethod ainex_interfaces::SetStringRequest
  (:response () (instance ainex_interfaces::SetStringResponse :init)))

(setf (get ainex_interfaces::SetStringRequest :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get ainex_interfaces::SetStringRequest :datatype-) "ainex_interfaces/SetStringRequest")
(setf (get ainex_interfaces::SetStringRequest :definition-)
      "string data
---
bool success
string message

")

(setf (get ainex_interfaces::SetStringResponse :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get ainex_interfaces::SetStringResponse :datatype-) "ainex_interfaces/SetStringResponse")
(setf (get ainex_interfaces::SetStringResponse :definition-)
      "string data
---
bool success
string message

")



(provide :ainex_interfaces/SetString "546971982e3fbbd5a41e60fb6432e357")



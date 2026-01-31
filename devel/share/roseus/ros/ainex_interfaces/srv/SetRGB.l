;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::SetRGB)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'SetRGB (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::SETRGB")
  (make-package "AINEX_INTERFACES::SETRGB"))
(unless (find-package "AINEX_INTERFACES::SETRGBREQUEST")
  (make-package "AINEX_INTERFACES::SETRGBREQUEST"))
(unless (find-package "AINEX_INTERFACES::SETRGBRESPONSE")
  (make-package "AINEX_INTERFACES::SETRGBRESPONSE"))

(in-package "ROS")





(defclass ainex_interfaces::SetRGBRequest
  :super ros::object
  :slots (_data ))

(defmethod ainex_interfaces::SetRGBRequest
  (:init
   (&key
    ((:data __data) (instance ainex_interfaces::RGB :init))
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
    ;; ainex_interfaces/RGB _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ainex_interfaces/RGB _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ainex_interfaces/RGB _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass ainex_interfaces::SetRGBResponse
  :super ros::object
  :slots (_success _message ))

(defmethod ainex_interfaces::SetRGBResponse
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

(defclass ainex_interfaces::SetRGB
  :super ros::object
  :slots ())

(setf (get ainex_interfaces::SetRGB :md5sum-) "0651eef3b42b0598c5024b059bb8dabe")
(setf (get ainex_interfaces::SetRGB :datatype-) "ainex_interfaces/SetRGB")
(setf (get ainex_interfaces::SetRGB :request) ainex_interfaces::SetRGBRequest)
(setf (get ainex_interfaces::SetRGB :response) ainex_interfaces::SetRGBResponse)

(defmethod ainex_interfaces::SetRGBRequest
  (:response () (instance ainex_interfaces::SetRGBResponse :init)))

(setf (get ainex_interfaces::SetRGBRequest :md5sum-) "0651eef3b42b0598c5024b059bb8dabe")
(setf (get ainex_interfaces::SetRGBRequest :datatype-) "ainex_interfaces/SetRGBRequest")
(setf (get ainex_interfaces::SetRGBRequest :definition-)
      "ainex_interfaces/RGB data

================================================================================
MSG: ainex_interfaces/RGB
int16 r
int16 g
int16 b
---
bool success
string message

")

(setf (get ainex_interfaces::SetRGBResponse :md5sum-) "0651eef3b42b0598c5024b059bb8dabe")
(setf (get ainex_interfaces::SetRGBResponse :datatype-) "ainex_interfaces/SetRGBResponse")
(setf (get ainex_interfaces::SetRGBResponse :definition-)
      "ainex_interfaces/RGB data

================================================================================
MSG: ainex_interfaces/RGB
int16 r
int16 g
int16 b
---
bool success
string message

")



(provide :ainex_interfaces/SetRGB "0651eef3b42b0598c5024b059bb8dabe")



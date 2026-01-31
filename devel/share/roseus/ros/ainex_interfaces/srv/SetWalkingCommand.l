;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::SetWalkingCommand)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'SetWalkingCommand (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::SETWALKINGCOMMAND")
  (make-package "AINEX_INTERFACES::SETWALKINGCOMMAND"))
(unless (find-package "AINEX_INTERFACES::SETWALKINGCOMMANDREQUEST")
  (make-package "AINEX_INTERFACES::SETWALKINGCOMMANDREQUEST"))
(unless (find-package "AINEX_INTERFACES::SETWALKINGCOMMANDRESPONSE")
  (make-package "AINEX_INTERFACES::SETWALKINGCOMMANDRESPONSE"))

(in-package "ROS")





(defclass ainex_interfaces::SetWalkingCommandRequest
  :super ros::object
  :slots (_command ))

(defmethod ainex_interfaces::SetWalkingCommandRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ainex_interfaces::SetWalkingCommandResponse
  :super ros::object
  :slots (_result ))

(defmethod ainex_interfaces::SetWalkingCommandResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ainex_interfaces::SetWalkingCommand
  :super ros::object
  :slots ())

(setf (get ainex_interfaces::SetWalkingCommand :md5sum-) "2fb3aa2736d70ecbfc297d3d9b879661")
(setf (get ainex_interfaces::SetWalkingCommand :datatype-) "ainex_interfaces/SetWalkingCommand")
(setf (get ainex_interfaces::SetWalkingCommand :request) ainex_interfaces::SetWalkingCommandRequest)
(setf (get ainex_interfaces::SetWalkingCommand :response) ainex_interfaces::SetWalkingCommandResponse)

(defmethod ainex_interfaces::SetWalkingCommandRequest
  (:response () (instance ainex_interfaces::SetWalkingCommandResponse :init)))

(setf (get ainex_interfaces::SetWalkingCommandRequest :md5sum-) "2fb3aa2736d70ecbfc297d3d9b879661")
(setf (get ainex_interfaces::SetWalkingCommandRequest :datatype-) "ainex_interfaces/SetWalkingCommandRequest")
(setf (get ainex_interfaces::SetWalkingCommandRequest :definition-)
      "string    command
---
bool            result

")

(setf (get ainex_interfaces::SetWalkingCommandResponse :md5sum-) "2fb3aa2736d70ecbfc297d3d9b879661")
(setf (get ainex_interfaces::SetWalkingCommandResponse :datatype-) "ainex_interfaces/SetWalkingCommandResponse")
(setf (get ainex_interfaces::SetWalkingCommandResponse :definition-)
      "string    command
---
bool            result

")



(provide :ainex_interfaces/SetWalkingCommand "2fb3aa2736d70ecbfc297d3d9b879661")



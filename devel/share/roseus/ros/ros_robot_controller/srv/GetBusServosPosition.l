;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::GetBusServosPosition)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'GetBusServosPosition (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::GETBUSSERVOSPOSITION")
  (make-package "ROS_ROBOT_CONTROLLER::GETBUSSERVOSPOSITION"))
(unless (find-package "ROS_ROBOT_CONTROLLER::GETBUSSERVOSPOSITIONREQUEST")
  (make-package "ROS_ROBOT_CONTROLLER::GETBUSSERVOSPOSITIONREQUEST"))
(unless (find-package "ROS_ROBOT_CONTROLLER::GETBUSSERVOSPOSITIONRESPONSE")
  (make-package "ROS_ROBOT_CONTROLLER::GETBUSSERVOSPOSITIONRESPONSE"))

(in-package "ROS")





(defclass ros_robot_controller::GetBusServosPositionRequest
  :super ros::object
  :slots (_id ))

(defmethod ros_robot_controller::GetBusServosPositionRequest
  (:init
   (&key
    ((:id __id) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _id __id)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint8[] _id
    (* 1    (length _id)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _id
     (write-long (length _id) s)
     (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _id
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _id (make-array n :element-type :char))
     (replace _id buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_robot_controller::GetBusServosPositionResponse
  :super ros::object
  :slots (_success _position ))

(defmethod ros_robot_controller::GetBusServosPositionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:position __position) (let (r) (dotimes (i 0) (push (instance ros_robot_controller::BusServoPosition :init) r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _position __position)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; ros_robot_controller/BusServoPosition[] _position
    (apply #'+ (send-all _position :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; ros_robot_controller/BusServoPosition[] _position
     (write-long (length _position) s)
     (dolist (elem _position)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_robot_controller/BusServoPosition[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (let (r) (dotimes (i n) (push (instance ros_robot_controller::BusServoPosition :init) r)) r))
     (dolist (elem- _position)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass ros_robot_controller::GetBusServosPosition
  :super ros::object
  :slots ())

(setf (get ros_robot_controller::GetBusServosPosition :md5sum-) "3c9b3df543d6a1087f63caf890b57f1c")
(setf (get ros_robot_controller::GetBusServosPosition :datatype-) "ros_robot_controller/GetBusServosPosition")
(setf (get ros_robot_controller::GetBusServosPosition :request) ros_robot_controller::GetBusServosPositionRequest)
(setf (get ros_robot_controller::GetBusServosPosition :response) ros_robot_controller::GetBusServosPositionResponse)

(defmethod ros_robot_controller::GetBusServosPositionRequest
  (:response () (instance ros_robot_controller::GetBusServosPositionResponse :init)))

(setf (get ros_robot_controller::GetBusServosPositionRequest :md5sum-) "3c9b3df543d6a1087f63caf890b57f1c")
(setf (get ros_robot_controller::GetBusServosPositionRequest :datatype-) "ros_robot_controller/GetBusServosPositionRequest")
(setf (get ros_robot_controller::GetBusServosPositionRequest :definition-)
      "uint8[] id
---
bool success
ros_robot_controller/BusServoPosition[] position


================================================================================
MSG: ros_robot_controller/BusServoPosition
uint16 id
uint16 position
")

(setf (get ros_robot_controller::GetBusServosPositionResponse :md5sum-) "3c9b3df543d6a1087f63caf890b57f1c")
(setf (get ros_robot_controller::GetBusServosPositionResponse :datatype-) "ros_robot_controller/GetBusServosPositionResponse")
(setf (get ros_robot_controller::GetBusServosPositionResponse :definition-)
      "uint8[] id
---
bool success
ros_robot_controller/BusServoPosition[] position


================================================================================
MSG: ros_robot_controller/BusServoPosition
uint16 id
uint16 position
")



(provide :ros_robot_controller/GetBusServosPosition "3c9b3df543d6a1087f63caf890b57f1c")



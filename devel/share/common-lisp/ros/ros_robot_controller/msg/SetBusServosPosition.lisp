; Auto-generated. Do not edit!


(cl:in-package ros_robot_controller-msg)


;//! \htmlinclude SetBusServosPosition.msg.html

(cl:defclass <SetBusServosPosition> (roslisp-msg-protocol:ros-message)
  ((duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0)
   (position
    :reader position
    :initarg :position
    :type (cl:vector ros_robot_controller-msg:BusServoPosition)
   :initform (cl:make-array 0 :element-type 'ros_robot_controller-msg:BusServoPosition :initial-element (cl:make-instance 'ros_robot_controller-msg:BusServoPosition))))
)

(cl:defclass SetBusServosPosition (<SetBusServosPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBusServosPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBusServosPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-msg:<SetBusServosPosition> is deprecated: use ros_robot_controller-msg:SetBusServosPosition instead.")))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <SetBusServosPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:duration-val is deprecated.  Use ros_robot_controller-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <SetBusServosPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:position-val is deprecated.  Use ros_robot_controller-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBusServosPosition>) ostream)
  "Serializes a message object of type '<SetBusServosPosition>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'position))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBusServosPosition>) istream)
  "Deserializes a message object of type '<SetBusServosPosition>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_robot_controller-msg:BusServoPosition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBusServosPosition>)))
  "Returns string type for a message object of type '<SetBusServosPosition>"
  "ros_robot_controller/SetBusServosPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBusServosPosition)))
  "Returns string type for a message object of type 'SetBusServosPosition"
  "ros_robot_controller/SetBusServosPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBusServosPosition>)))
  "Returns md5sum for a message object of type '<SetBusServosPosition>"
  "ed584daec2751e0a3aa8679e2d6197b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBusServosPosition)))
  "Returns md5sum for a message object of type 'SetBusServosPosition"
  "ed584daec2751e0a3aa8679e2d6197b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBusServosPosition>)))
  "Returns full string definition for message of type '<SetBusServosPosition>"
  (cl:format cl:nil "float64 duration~%ros_robot_controller/BusServoPosition[] position~%~%================================================================================~%MSG: ros_robot_controller/BusServoPosition~%uint16 id~%uint16 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBusServosPosition)))
  "Returns full string definition for message of type 'SetBusServosPosition"
  (cl:format cl:nil "float64 duration~%ros_robot_controller/BusServoPosition[] position~%~%================================================================================~%MSG: ros_robot_controller/BusServoPosition~%uint16 id~%uint16 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBusServosPosition>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBusServosPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBusServosPosition
    (cl:cons ':duration (duration msg))
    (cl:cons ':position (position msg))
))

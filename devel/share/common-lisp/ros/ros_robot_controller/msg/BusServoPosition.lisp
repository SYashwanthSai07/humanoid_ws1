; Auto-generated. Do not edit!


(cl:in-package ros_robot_controller-msg)


;//! \htmlinclude BusServoPosition.msg.html

(cl:defclass <BusServoPosition> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BusServoPosition (<BusServoPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BusServoPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BusServoPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-msg:<BusServoPosition> is deprecated: use ros_robot_controller-msg:BusServoPosition instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <BusServoPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:id-val is deprecated.  Use ros_robot_controller-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <BusServoPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:position-val is deprecated.  Use ros_robot_controller-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BusServoPosition>) ostream)
  "Serializes a message object of type '<BusServoPosition>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BusServoPosition>) istream)
  "Deserializes a message object of type '<BusServoPosition>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BusServoPosition>)))
  "Returns string type for a message object of type '<BusServoPosition>"
  "ros_robot_controller/BusServoPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BusServoPosition)))
  "Returns string type for a message object of type 'BusServoPosition"
  "ros_robot_controller/BusServoPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BusServoPosition>)))
  "Returns md5sum for a message object of type '<BusServoPosition>"
  "f6c99c1d923607c02ca92f7b01135d3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BusServoPosition)))
  "Returns md5sum for a message object of type 'BusServoPosition"
  "f6c99c1d923607c02ca92f7b01135d3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BusServoPosition>)))
  "Returns full string definition for message of type '<BusServoPosition>"
  (cl:format cl:nil "uint16 id~%uint16 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BusServoPosition)))
  "Returns full string definition for message of type 'BusServoPosition"
  (cl:format cl:nil "uint16 id~%uint16 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BusServoPosition>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BusServoPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'BusServoPosition
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
))

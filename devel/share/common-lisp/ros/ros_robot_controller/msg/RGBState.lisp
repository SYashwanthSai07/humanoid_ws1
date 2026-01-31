; Auto-generated. Do not edit!


(cl:in-package ros_robot_controller-msg)


;//! \htmlinclude RGBState.msg.html

(cl:defclass <RGBState> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (r
    :reader r
    :initarg :r
    :type cl:fixnum
    :initform 0)
   (g
    :reader g
    :initarg :g
    :type cl:fixnum
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RGBState (<RGBState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RGBState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RGBState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-msg:<RGBState> is deprecated: use ros_robot_controller-msg:RGBState instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RGBState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:id-val is deprecated.  Use ros_robot_controller-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <RGBState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:r-val is deprecated.  Use ros_robot_controller-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'g-val :lambda-list '(m))
(cl:defmethod g-val ((m <RGBState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:g-val is deprecated.  Use ros_robot_controller-msg:g instead.")
  (g m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <RGBState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:b-val is deprecated.  Use ros_robot_controller-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RGBState>) ostream)
  "Serializes a message object of type '<RGBState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RGBState>) istream)
  "Deserializes a message object of type '<RGBState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RGBState>)))
  "Returns string type for a message object of type '<RGBState>"
  "ros_robot_controller/RGBState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RGBState)))
  "Returns string type for a message object of type 'RGBState"
  "ros_robot_controller/RGBState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RGBState>)))
  "Returns md5sum for a message object of type '<RGBState>"
  "343e67bfed955dda24bc6fa95587f87d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RGBState)))
  "Returns md5sum for a message object of type 'RGBState"
  "343e67bfed955dda24bc6fa95587f87d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RGBState>)))
  "Returns full string definition for message of type '<RGBState>"
  (cl:format cl:nil "uint8 id~%uint8 r~%uint8 g~%uint8 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RGBState)))
  "Returns full string definition for message of type 'RGBState"
  (cl:format cl:nil "uint8 id~%uint8 r~%uint8 g~%uint8 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RGBState>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RGBState>))
  "Converts a ROS message object to a list"
  (cl:list 'RGBState
    (cl:cons ':id (id msg))
    (cl:cons ':r (r msg))
    (cl:cons ':g (g msg))
    (cl:cons ':b (b msg))
))

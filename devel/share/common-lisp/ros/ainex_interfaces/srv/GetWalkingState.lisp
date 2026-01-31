; Auto-generated. Do not edit!


(cl:in-package ainex_interfaces-srv)


;//! \htmlinclude GetWalkingState-request.msg.html

(cl:defclass <GetWalkingState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetWalkingState-request (<GetWalkingState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWalkingState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWalkingState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-srv:<GetWalkingState-request> is deprecated: use ainex_interfaces-srv:GetWalkingState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWalkingState-request>) ostream)
  "Serializes a message object of type '<GetWalkingState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWalkingState-request>) istream)
  "Deserializes a message object of type '<GetWalkingState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWalkingState-request>)))
  "Returns string type for a service object of type '<GetWalkingState-request>"
  "ainex_interfaces/GetWalkingStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWalkingState-request)))
  "Returns string type for a service object of type 'GetWalkingState-request"
  "ainex_interfaces/GetWalkingStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWalkingState-request>)))
  "Returns md5sum for a message object of type '<GetWalkingState-request>"
  "603c04acee08adec382920a1d1b74bb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWalkingState-request)))
  "Returns md5sum for a message object of type 'GetWalkingState-request"
  "603c04acee08adec382920a1d1b74bb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWalkingState-request>)))
  "Returns full string definition for message of type '<GetWalkingState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWalkingState-request)))
  "Returns full string definition for message of type 'GetWalkingState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWalkingState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWalkingState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWalkingState-request
))
;//! \htmlinclude GetWalkingState-response.msg.html

(cl:defclass <GetWalkingState-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass GetWalkingState-response (<GetWalkingState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWalkingState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWalkingState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-srv:<GetWalkingState-response> is deprecated: use ainex_interfaces-srv:GetWalkingState-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetWalkingState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-srv:state-val is deprecated.  Use ainex_interfaces-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetWalkingState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-srv:message-val is deprecated.  Use ainex_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWalkingState-response>) ostream)
  "Serializes a message object of type '<GetWalkingState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWalkingState-response>) istream)
  "Deserializes a message object of type '<GetWalkingState-response>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWalkingState-response>)))
  "Returns string type for a service object of type '<GetWalkingState-response>"
  "ainex_interfaces/GetWalkingStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWalkingState-response)))
  "Returns string type for a service object of type 'GetWalkingState-response"
  "ainex_interfaces/GetWalkingStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWalkingState-response>)))
  "Returns md5sum for a message object of type '<GetWalkingState-response>"
  "603c04acee08adec382920a1d1b74bb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWalkingState-response)))
  "Returns md5sum for a message object of type 'GetWalkingState-response"
  "603c04acee08adec382920a1d1b74bb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWalkingState-response>)))
  "Returns full string definition for message of type '<GetWalkingState-response>"
  (cl:format cl:nil "bool state~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWalkingState-response)))
  "Returns full string definition for message of type 'GetWalkingState-response"
  (cl:format cl:nil "bool state~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWalkingState-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWalkingState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWalkingState-response
    (cl:cons ':state (state msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWalkingState)))
  'GetWalkingState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWalkingState)))
  'GetWalkingState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWalkingState)))
  "Returns string type for a service object of type '<GetWalkingState>"
  "ainex_interfaces/GetWalkingState")
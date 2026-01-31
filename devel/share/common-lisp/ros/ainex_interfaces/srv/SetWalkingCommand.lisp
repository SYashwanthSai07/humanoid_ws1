; Auto-generated. Do not edit!


(cl:in-package ainex_interfaces-srv)


;//! \htmlinclude SetWalkingCommand-request.msg.html

(cl:defclass <SetWalkingCommand-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass SetWalkingCommand-request (<SetWalkingCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWalkingCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWalkingCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-srv:<SetWalkingCommand-request> is deprecated: use ainex_interfaces-srv:SetWalkingCommand-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SetWalkingCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-srv:command-val is deprecated.  Use ainex_interfaces-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWalkingCommand-request>) ostream)
  "Serializes a message object of type '<SetWalkingCommand-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWalkingCommand-request>) istream)
  "Deserializes a message object of type '<SetWalkingCommand-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWalkingCommand-request>)))
  "Returns string type for a service object of type '<SetWalkingCommand-request>"
  "ainex_interfaces/SetWalkingCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWalkingCommand-request)))
  "Returns string type for a service object of type 'SetWalkingCommand-request"
  "ainex_interfaces/SetWalkingCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWalkingCommand-request>)))
  "Returns md5sum for a message object of type '<SetWalkingCommand-request>"
  "2fb3aa2736d70ecbfc297d3d9b879661")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWalkingCommand-request)))
  "Returns md5sum for a message object of type 'SetWalkingCommand-request"
  "2fb3aa2736d70ecbfc297d3d9b879661")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWalkingCommand-request>)))
  "Returns full string definition for message of type '<SetWalkingCommand-request>"
  (cl:format cl:nil "string    command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWalkingCommand-request)))
  "Returns full string definition for message of type 'SetWalkingCommand-request"
  (cl:format cl:nil "string    command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWalkingCommand-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWalkingCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWalkingCommand-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude SetWalkingCommand-response.msg.html

(cl:defclass <SetWalkingCommand-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetWalkingCommand-response (<SetWalkingCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWalkingCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWalkingCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-srv:<SetWalkingCommand-response> is deprecated: use ainex_interfaces-srv:SetWalkingCommand-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetWalkingCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-srv:result-val is deprecated.  Use ainex_interfaces-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWalkingCommand-response>) ostream)
  "Serializes a message object of type '<SetWalkingCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWalkingCommand-response>) istream)
  "Deserializes a message object of type '<SetWalkingCommand-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWalkingCommand-response>)))
  "Returns string type for a service object of type '<SetWalkingCommand-response>"
  "ainex_interfaces/SetWalkingCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWalkingCommand-response)))
  "Returns string type for a service object of type 'SetWalkingCommand-response"
  "ainex_interfaces/SetWalkingCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWalkingCommand-response>)))
  "Returns md5sum for a message object of type '<SetWalkingCommand-response>"
  "2fb3aa2736d70ecbfc297d3d9b879661")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWalkingCommand-response)))
  "Returns md5sum for a message object of type 'SetWalkingCommand-response"
  "2fb3aa2736d70ecbfc297d3d9b879661")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWalkingCommand-response>)))
  "Returns full string definition for message of type '<SetWalkingCommand-response>"
  (cl:format cl:nil "bool            result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWalkingCommand-response)))
  "Returns full string definition for message of type 'SetWalkingCommand-response"
  (cl:format cl:nil "bool            result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWalkingCommand-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWalkingCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWalkingCommand-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetWalkingCommand)))
  'SetWalkingCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetWalkingCommand)))
  'SetWalkingCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWalkingCommand)))
  "Returns string type for a service object of type '<SetWalkingCommand>"
  "ainex_interfaces/SetWalkingCommand")
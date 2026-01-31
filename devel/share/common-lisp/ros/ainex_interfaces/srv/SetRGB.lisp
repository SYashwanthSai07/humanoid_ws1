; Auto-generated. Do not edit!


(cl:in-package ainex_interfaces-srv)


;//! \htmlinclude SetRGB-request.msg.html

(cl:defclass <SetRGB-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type ainex_interfaces-msg:RGB
    :initform (cl:make-instance 'ainex_interfaces-msg:RGB)))
)

(cl:defclass SetRGB-request (<SetRGB-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRGB-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRGB-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-srv:<SetRGB-request> is deprecated: use ainex_interfaces-srv:SetRGB-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetRGB-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-srv:data-val is deprecated.  Use ainex_interfaces-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRGB-request>) ostream)
  "Serializes a message object of type '<SetRGB-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRGB-request>) istream)
  "Deserializes a message object of type '<SetRGB-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRGB-request>)))
  "Returns string type for a service object of type '<SetRGB-request>"
  "ainex_interfaces/SetRGBRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRGB-request)))
  "Returns string type for a service object of type 'SetRGB-request"
  "ainex_interfaces/SetRGBRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRGB-request>)))
  "Returns md5sum for a message object of type '<SetRGB-request>"
  "0651eef3b42b0598c5024b059bb8dabe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRGB-request)))
  "Returns md5sum for a message object of type 'SetRGB-request"
  "0651eef3b42b0598c5024b059bb8dabe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRGB-request>)))
  "Returns full string definition for message of type '<SetRGB-request>"
  (cl:format cl:nil "ainex_interfaces/RGB data~%~%================================================================================~%MSG: ainex_interfaces/RGB~%int16 r~%int16 g~%int16 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRGB-request)))
  "Returns full string definition for message of type 'SetRGB-request"
  (cl:format cl:nil "ainex_interfaces/RGB data~%~%================================================================================~%MSG: ainex_interfaces/RGB~%int16 r~%int16 g~%int16 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRGB-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRGB-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRGB-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetRGB-response.msg.html

(cl:defclass <SetRGB-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetRGB-response (<SetRGB-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRGB-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRGB-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-srv:<SetRGB-response> is deprecated: use ainex_interfaces-srv:SetRGB-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetRGB-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-srv:success-val is deprecated.  Use ainex_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetRGB-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-srv:message-val is deprecated.  Use ainex_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRGB-response>) ostream)
  "Serializes a message object of type '<SetRGB-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRGB-response>) istream)
  "Deserializes a message object of type '<SetRGB-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRGB-response>)))
  "Returns string type for a service object of type '<SetRGB-response>"
  "ainex_interfaces/SetRGBResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRGB-response)))
  "Returns string type for a service object of type 'SetRGB-response"
  "ainex_interfaces/SetRGBResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRGB-response>)))
  "Returns md5sum for a message object of type '<SetRGB-response>"
  "0651eef3b42b0598c5024b059bb8dabe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRGB-response)))
  "Returns md5sum for a message object of type 'SetRGB-response"
  "0651eef3b42b0598c5024b059bb8dabe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRGB-response>)))
  "Returns full string definition for message of type '<SetRGB-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRGB-response)))
  "Returns full string definition for message of type 'SetRGB-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRGB-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRGB-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRGB-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetRGB)))
  'SetRGB-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetRGB)))
  'SetRGB-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRGB)))
  "Returns string type for a service object of type '<SetRGB>"
  "ainex_interfaces/SetRGB")
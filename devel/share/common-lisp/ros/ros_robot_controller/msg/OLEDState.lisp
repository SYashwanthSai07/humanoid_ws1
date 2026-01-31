; Auto-generated. Do not edit!


(cl:in-package ros_robot_controller-msg)


;//! \htmlinclude OLEDState.msg.html

(cl:defclass <OLEDState> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass OLEDState (<OLEDState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OLEDState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OLEDState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-msg:<OLEDState> is deprecated: use ros_robot_controller-msg:OLEDState instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <OLEDState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:index-val is deprecated.  Use ros_robot_controller-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <OLEDState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:text-val is deprecated.  Use ros_robot_controller-msg:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OLEDState>) ostream)
  "Serializes a message object of type '<OLEDState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OLEDState>) istream)
  "Deserializes a message object of type '<OLEDState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OLEDState>)))
  "Returns string type for a message object of type '<OLEDState>"
  "ros_robot_controller/OLEDState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OLEDState)))
  "Returns string type for a message object of type 'OLEDState"
  "ros_robot_controller/OLEDState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OLEDState>)))
  "Returns md5sum for a message object of type '<OLEDState>"
  "205a1c2cc7c3057aaccb3f8bbf12e142")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OLEDState)))
  "Returns md5sum for a message object of type 'OLEDState"
  "205a1c2cc7c3057aaccb3f8bbf12e142")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OLEDState>)))
  "Returns full string definition for message of type '<OLEDState>"
  (cl:format cl:nil "uint8 index~%string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OLEDState)))
  "Returns full string definition for message of type 'OLEDState"
  (cl:format cl:nil "uint8 index~%string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OLEDState>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OLEDState>))
  "Converts a ROS message object to a list"
  (cl:list 'OLEDState
    (cl:cons ':index (index msg))
    (cl:cons ':text (text msg))
))

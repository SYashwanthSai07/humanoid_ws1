; Auto-generated. Do not edit!


(cl:in-package ainex_interfaces-msg)


;//! \htmlinclude RGB.msg.html

(cl:defclass <RGB> (roslisp-msg-protocol:ros-message)
  ((r
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

(cl:defclass RGB (<RGB>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RGB>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RGB)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-msg:<RGB> is deprecated: use ainex_interfaces-msg:RGB instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <RGB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:r-val is deprecated.  Use ainex_interfaces-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'g-val :lambda-list '(m))
(cl:defmethod g-val ((m <RGB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:g-val is deprecated.  Use ainex_interfaces-msg:g instead.")
  (g m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <RGB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:b-val is deprecated.  Use ainex_interfaces-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RGB>) ostream)
  "Serializes a message object of type '<RGB>"
  (cl:let* ((signed (cl:slot-value msg 'r)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'g)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RGB>) istream)
  "Deserializes a message object of type '<RGB>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'g) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RGB>)))
  "Returns string type for a message object of type '<RGB>"
  "ainex_interfaces/RGB")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RGB)))
  "Returns string type for a message object of type 'RGB"
  "ainex_interfaces/RGB")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RGB>)))
  "Returns md5sum for a message object of type '<RGB>"
  "2dfe481b7e570e3e4be99cdc0453c9c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RGB)))
  "Returns md5sum for a message object of type 'RGB"
  "2dfe481b7e570e3e4be99cdc0453c9c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RGB>)))
  "Returns full string definition for message of type '<RGB>"
  (cl:format cl:nil "int16 r~%int16 g~%int16 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RGB)))
  "Returns full string definition for message of type 'RGB"
  (cl:format cl:nil "int16 r~%int16 g~%int16 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RGB>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RGB>))
  "Converts a ROS message object to a list"
  (cl:list 'RGB
    (cl:cons ':r (r msg))
    (cl:cons ':g (g msg))
    (cl:cons ':b (b msg))
))

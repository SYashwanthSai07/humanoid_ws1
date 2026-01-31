; Auto-generated. Do not edit!


(cl:in-package ainex_interfaces-msg)


;//! \htmlinclude ROI.msg.html

(cl:defclass <ROI> (roslisp-msg-protocol:ros-message)
  ((y_min
    :reader y_min
    :initarg :y_min
    :type cl:integer
    :initform 0)
   (y_max
    :reader y_max
    :initarg :y_max
    :type cl:integer
    :initform 0)
   (x_min
    :reader x_min
    :initarg :x_min
    :type cl:integer
    :initform 0)
   (x_max
    :reader x_max
    :initarg :x_max
    :type cl:integer
    :initform 0))
)

(cl:defclass ROI (<ROI>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ROI>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ROI)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-msg:<ROI> is deprecated: use ainex_interfaces-msg:ROI instead.")))

(cl:ensure-generic-function 'y_min-val :lambda-list '(m))
(cl:defmethod y_min-val ((m <ROI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:y_min-val is deprecated.  Use ainex_interfaces-msg:y_min instead.")
  (y_min m))

(cl:ensure-generic-function 'y_max-val :lambda-list '(m))
(cl:defmethod y_max-val ((m <ROI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:y_max-val is deprecated.  Use ainex_interfaces-msg:y_max instead.")
  (y_max m))

(cl:ensure-generic-function 'x_min-val :lambda-list '(m))
(cl:defmethod x_min-val ((m <ROI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:x_min-val is deprecated.  Use ainex_interfaces-msg:x_min instead.")
  (x_min m))

(cl:ensure-generic-function 'x_max-val :lambda-list '(m))
(cl:defmethod x_max-val ((m <ROI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:x_max-val is deprecated.  Use ainex_interfaces-msg:x_max instead.")
  (x_max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ROI>) ostream)
  "Serializes a message object of type '<ROI>"
  (cl:let* ((signed (cl:slot-value msg 'y_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y_max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x_max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ROI>) istream)
  "Deserializes a message object of type '<ROI>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_min) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_max) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_min) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_max) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ROI>)))
  "Returns string type for a message object of type '<ROI>"
  "ainex_interfaces/ROI")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ROI)))
  "Returns string type for a message object of type 'ROI"
  "ainex_interfaces/ROI")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ROI>)))
  "Returns md5sum for a message object of type '<ROI>"
  "2b00faa7a7bb95e05cfa78034bc38cd9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ROI)))
  "Returns md5sum for a message object of type 'ROI"
  "2b00faa7a7bb95e05cfa78034bc38cd9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ROI>)))
  "Returns full string definition for message of type '<ROI>"
  (cl:format cl:nil "int32 y_min~%int32 y_max~%int32 x_min~%int32 x_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ROI)))
  "Returns full string definition for message of type 'ROI"
  (cl:format cl:nil "int32 y_min~%int32 y_max~%int32 x_min~%int32 x_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ROI>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ROI>))
  "Converts a ROS message object to a list"
  (cl:list 'ROI
    (cl:cons ':y_min (y_min msg))
    (cl:cons ':y_max (y_max msg))
    (cl:cons ':x_min (x_min msg))
    (cl:cons ':x_max (x_max msg))
))

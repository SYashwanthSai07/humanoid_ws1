; Auto-generated. Do not edit!


(cl:in-package ainex_interfaces-msg)


;//! \htmlinclude FingerPosition.msg.html

(cl:defclass <FingerPosition> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (points
    :reader points
    :initarg :points
    :type ainex_interfaces-msg:PixelPosition
    :initform (cl:make-instance 'ainex_interfaces-msg:PixelPosition)))
)

(cl:defclass FingerPosition (<FingerPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FingerPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FingerPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-msg:<FingerPosition> is deprecated: use ainex_interfaces-msg:FingerPosition instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FingerPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:header-val is deprecated.  Use ainex_interfaces-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <FingerPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:label-val is deprecated.  Use ainex_interfaces-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <FingerPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:points-val is deprecated.  Use ainex_interfaces-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FingerPosition>) ostream)
  "Serializes a message object of type '<FingerPosition>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FingerPosition>) istream)
  "Deserializes a message object of type '<FingerPosition>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FingerPosition>)))
  "Returns string type for a message object of type '<FingerPosition>"
  "ainex_interfaces/FingerPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FingerPosition)))
  "Returns string type for a message object of type 'FingerPosition"
  "ainex_interfaces/FingerPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FingerPosition>)))
  "Returns md5sum for a message object of type '<FingerPosition>"
  "e758c8d7096fb5f61363fb7d7418aeb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FingerPosition)))
  "Returns md5sum for a message object of type 'FingerPosition"
  "e758c8d7096fb5f61363fb7d7418aeb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FingerPosition>)))
  "Returns full string definition for message of type '<FingerPosition>"
  (cl:format cl:nil "std_msgs/Header header~%string label~%ainex_interfaces/PixelPosition points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ainex_interfaces/PixelPosition~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FingerPosition)))
  "Returns full string definition for message of type 'FingerPosition"
  (cl:format cl:nil "std_msgs/Header header~%string label~%ainex_interfaces/PixelPosition points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ainex_interfaces/PixelPosition~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FingerPosition>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'label))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FingerPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'FingerPosition
    (cl:cons ':header (header msg))
    (cl:cons ':label (label msg))
    (cl:cons ':points (points msg))
))

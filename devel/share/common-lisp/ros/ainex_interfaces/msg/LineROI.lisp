; Auto-generated. Do not edit!


(cl:in-package ainex_interfaces-msg)


;//! \htmlinclude LineROI.msg.html

(cl:defclass <LineROI> (roslisp-msg-protocol:ros-message)
  ((up
    :reader up
    :initarg :up
    :type ainex_interfaces-msg:ROI
    :initform (cl:make-instance 'ainex_interfaces-msg:ROI))
   (center
    :reader center
    :initarg :center
    :type ainex_interfaces-msg:ROI
    :initform (cl:make-instance 'ainex_interfaces-msg:ROI))
   (down
    :reader down
    :initarg :down
    :type ainex_interfaces-msg:ROI
    :initform (cl:make-instance 'ainex_interfaces-msg:ROI)))
)

(cl:defclass LineROI (<LineROI>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineROI>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineROI)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-msg:<LineROI> is deprecated: use ainex_interfaces-msg:LineROI instead.")))

(cl:ensure-generic-function 'up-val :lambda-list '(m))
(cl:defmethod up-val ((m <LineROI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:up-val is deprecated.  Use ainex_interfaces-msg:up instead.")
  (up m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <LineROI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:center-val is deprecated.  Use ainex_interfaces-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'down-val :lambda-list '(m))
(cl:defmethod down-val ((m <LineROI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:down-val is deprecated.  Use ainex_interfaces-msg:down instead.")
  (down m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineROI>) ostream)
  "Serializes a message object of type '<LineROI>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'up) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'down) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineROI>) istream)
  "Deserializes a message object of type '<LineROI>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'up) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'down) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineROI>)))
  "Returns string type for a message object of type '<LineROI>"
  "ainex_interfaces/LineROI")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineROI)))
  "Returns string type for a message object of type 'LineROI"
  "ainex_interfaces/LineROI")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineROI>)))
  "Returns md5sum for a message object of type '<LineROI>"
  "bccdc6e8e70cb622e1827d4df83b58fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineROI)))
  "Returns md5sum for a message object of type 'LineROI"
  "bccdc6e8e70cb622e1827d4df83b58fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineROI>)))
  "Returns full string definition for message of type '<LineROI>"
  (cl:format cl:nil "ainex_interfaces/ROI up~%ainex_interfaces/ROI center~%ainex_interfaces/ROI down~%~%================================================================================~%MSG: ainex_interfaces/ROI~%int32 y_min~%int32 y_max~%int32 x_min~%int32 x_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineROI)))
  "Returns full string definition for message of type 'LineROI"
  (cl:format cl:nil "ainex_interfaces/ROI up~%ainex_interfaces/ROI center~%ainex_interfaces/ROI down~%~%================================================================================~%MSG: ainex_interfaces/ROI~%int32 y_min~%int32 y_max~%int32 x_min~%int32 x_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineROI>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'up))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'down))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineROI>))
  "Converts a ROS message object to a list"
  (cl:list 'LineROI
    (cl:cons ':up (up msg))
    (cl:cons ':center (center msg))
    (cl:cons ':down (down msg))
))

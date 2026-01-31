; Auto-generated. Do not edit!


(cl:in-package ainex_interfaces-msg)


;//! \htmlinclude ColorsDetect.msg.html

(cl:defclass <ColorsDetect> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector ainex_interfaces-msg:ColorDetect)
   :initform (cl:make-array 0 :element-type 'ainex_interfaces-msg:ColorDetect :initial-element (cl:make-instance 'ainex_interfaces-msg:ColorDetect))))
)

(cl:defclass ColorsDetect (<ColorsDetect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColorsDetect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColorsDetect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-msg:<ColorsDetect> is deprecated: use ainex_interfaces-msg:ColorsDetect instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ColorsDetect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:data-val is deprecated.  Use ainex_interfaces-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColorsDetect>) ostream)
  "Serializes a message object of type '<ColorsDetect>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColorsDetect>) istream)
  "Deserializes a message object of type '<ColorsDetect>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ainex_interfaces-msg:ColorDetect))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColorsDetect>)))
  "Returns string type for a message object of type '<ColorsDetect>"
  "ainex_interfaces/ColorsDetect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColorsDetect)))
  "Returns string type for a message object of type 'ColorsDetect"
  "ainex_interfaces/ColorsDetect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColorsDetect>)))
  "Returns md5sum for a message object of type '<ColorsDetect>"
  "e8024ffa57fcf070b87e6db34ea1620a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColorsDetect)))
  "Returns md5sum for a message object of type 'ColorsDetect"
  "e8024ffa57fcf070b87e6db34ea1620a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColorsDetect>)))
  "Returns full string definition for message of type '<ColorsDetect>"
  (cl:format cl:nil "ainex_interfaces/ColorDetect[] data~%~%================================================================================~%MSG: ainex_interfaces/ColorDetect~%string color_name~%bool use_name~%string detect_type~%ainex_interfaces/ROI roi~%ainex_interfaces/LineROI line_roi~%uint32[] image_process_size~%int16[] lab_min~%int16[] lab_max~%float64 min_area~%float64 max_area~%~%================================================================================~%MSG: ainex_interfaces/ROI~%int32 y_min~%int32 y_max~%int32 x_min~%int32 x_max~%~%================================================================================~%MSG: ainex_interfaces/LineROI~%ainex_interfaces/ROI up~%ainex_interfaces/ROI center~%ainex_interfaces/ROI down~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColorsDetect)))
  "Returns full string definition for message of type 'ColorsDetect"
  (cl:format cl:nil "ainex_interfaces/ColorDetect[] data~%~%================================================================================~%MSG: ainex_interfaces/ColorDetect~%string color_name~%bool use_name~%string detect_type~%ainex_interfaces/ROI roi~%ainex_interfaces/LineROI line_roi~%uint32[] image_process_size~%int16[] lab_min~%int16[] lab_max~%float64 min_area~%float64 max_area~%~%================================================================================~%MSG: ainex_interfaces/ROI~%int32 y_min~%int32 y_max~%int32 x_min~%int32 x_max~%~%================================================================================~%MSG: ainex_interfaces/LineROI~%ainex_interfaces/ROI up~%ainex_interfaces/ROI center~%ainex_interfaces/ROI down~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColorsDetect>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColorsDetect>))
  "Converts a ROS message object to a list"
  (cl:list 'ColorsDetect
    (cl:cons ':data (data msg))
))

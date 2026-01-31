; Auto-generated. Do not edit!


(cl:in-package ainex_interfaces-msg)


;//! \htmlinclude ColorDetect.msg.html

(cl:defclass <ColorDetect> (roslisp-msg-protocol:ros-message)
  ((color_name
    :reader color_name
    :initarg :color_name
    :type cl:string
    :initform "")
   (use_name
    :reader use_name
    :initarg :use_name
    :type cl:boolean
    :initform cl:nil)
   (detect_type
    :reader detect_type
    :initarg :detect_type
    :type cl:string
    :initform "")
   (roi
    :reader roi
    :initarg :roi
    :type ainex_interfaces-msg:ROI
    :initform (cl:make-instance 'ainex_interfaces-msg:ROI))
   (line_roi
    :reader line_roi
    :initarg :line_roi
    :type ainex_interfaces-msg:LineROI
    :initform (cl:make-instance 'ainex_interfaces-msg:LineROI))
   (image_process_size
    :reader image_process_size
    :initarg :image_process_size
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (lab_min
    :reader lab_min
    :initarg :lab_min
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (lab_max
    :reader lab_max
    :initarg :lab_max
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (min_area
    :reader min_area
    :initarg :min_area
    :type cl:float
    :initform 0.0)
   (max_area
    :reader max_area
    :initarg :max_area
    :type cl:float
    :initform 0.0))
)

(cl:defclass ColorDetect (<ColorDetect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColorDetect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColorDetect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-msg:<ColorDetect> is deprecated: use ainex_interfaces-msg:ColorDetect instead.")))

(cl:ensure-generic-function 'color_name-val :lambda-list '(m))
(cl:defmethod color_name-val ((m <ColorDetect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:color_name-val is deprecated.  Use ainex_interfaces-msg:color_name instead.")
  (color_name m))

(cl:ensure-generic-function 'use_name-val :lambda-list '(m))
(cl:defmethod use_name-val ((m <ColorDetect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:use_name-val is deprecated.  Use ainex_interfaces-msg:use_name instead.")
  (use_name m))

(cl:ensure-generic-function 'detect_type-val :lambda-list '(m))
(cl:defmethod detect_type-val ((m <ColorDetect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:detect_type-val is deprecated.  Use ainex_interfaces-msg:detect_type instead.")
  (detect_type m))

(cl:ensure-generic-function 'roi-val :lambda-list '(m))
(cl:defmethod roi-val ((m <ColorDetect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:roi-val is deprecated.  Use ainex_interfaces-msg:roi instead.")
  (roi m))

(cl:ensure-generic-function 'line_roi-val :lambda-list '(m))
(cl:defmethod line_roi-val ((m <ColorDetect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:line_roi-val is deprecated.  Use ainex_interfaces-msg:line_roi instead.")
  (line_roi m))

(cl:ensure-generic-function 'image_process_size-val :lambda-list '(m))
(cl:defmethod image_process_size-val ((m <ColorDetect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:image_process_size-val is deprecated.  Use ainex_interfaces-msg:image_process_size instead.")
  (image_process_size m))

(cl:ensure-generic-function 'lab_min-val :lambda-list '(m))
(cl:defmethod lab_min-val ((m <ColorDetect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:lab_min-val is deprecated.  Use ainex_interfaces-msg:lab_min instead.")
  (lab_min m))

(cl:ensure-generic-function 'lab_max-val :lambda-list '(m))
(cl:defmethod lab_max-val ((m <ColorDetect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:lab_max-val is deprecated.  Use ainex_interfaces-msg:lab_max instead.")
  (lab_max m))

(cl:ensure-generic-function 'min_area-val :lambda-list '(m))
(cl:defmethod min_area-val ((m <ColorDetect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:min_area-val is deprecated.  Use ainex_interfaces-msg:min_area instead.")
  (min_area m))

(cl:ensure-generic-function 'max_area-val :lambda-list '(m))
(cl:defmethod max_area-val ((m <ColorDetect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:max_area-val is deprecated.  Use ainex_interfaces-msg:max_area instead.")
  (max_area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColorDetect>) ostream)
  "Serializes a message object of type '<ColorDetect>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_name) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detect_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detect_type))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'line_roi) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'image_process_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'image_process_size))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lab_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'lab_min))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lab_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'lab_max))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColorDetect>) istream)
  "Deserializes a message object of type '<ColorDetect>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'use_name) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detect_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detect_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'line_roi) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'image_process_size) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'image_process_size)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lab_min) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lab_min)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lab_max) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lab_max)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_area) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_area) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColorDetect>)))
  "Returns string type for a message object of type '<ColorDetect>"
  "ainex_interfaces/ColorDetect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColorDetect)))
  "Returns string type for a message object of type 'ColorDetect"
  "ainex_interfaces/ColorDetect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColorDetect>)))
  "Returns md5sum for a message object of type '<ColorDetect>"
  "7c6d76275e561b8430ce7facd08f9909")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColorDetect)))
  "Returns md5sum for a message object of type 'ColorDetect"
  "7c6d76275e561b8430ce7facd08f9909")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColorDetect>)))
  "Returns full string definition for message of type '<ColorDetect>"
  (cl:format cl:nil "string color_name~%bool use_name~%string detect_type~%ainex_interfaces/ROI roi~%ainex_interfaces/LineROI line_roi~%uint32[] image_process_size~%int16[] lab_min~%int16[] lab_max~%float64 min_area~%float64 max_area~%~%================================================================================~%MSG: ainex_interfaces/ROI~%int32 y_min~%int32 y_max~%int32 x_min~%int32 x_max~%~%================================================================================~%MSG: ainex_interfaces/LineROI~%ainex_interfaces/ROI up~%ainex_interfaces/ROI center~%ainex_interfaces/ROI down~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColorDetect)))
  "Returns full string definition for message of type 'ColorDetect"
  (cl:format cl:nil "string color_name~%bool use_name~%string detect_type~%ainex_interfaces/ROI roi~%ainex_interfaces/LineROI line_roi~%uint32[] image_process_size~%int16[] lab_min~%int16[] lab_max~%float64 min_area~%float64 max_area~%~%================================================================================~%MSG: ainex_interfaces/ROI~%int32 y_min~%int32 y_max~%int32 x_min~%int32 x_max~%~%================================================================================~%MSG: ainex_interfaces/LineROI~%ainex_interfaces/ROI up~%ainex_interfaces/ROI center~%ainex_interfaces/ROI down~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColorDetect>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'color_name))
     1
     4 (cl:length (cl:slot-value msg 'detect_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'line_roi))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image_process_size) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lab_min) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lab_max) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColorDetect>))
  "Converts a ROS message object to a list"
  (cl:list 'ColorDetect
    (cl:cons ':color_name (color_name msg))
    (cl:cons ':use_name (use_name msg))
    (cl:cons ':detect_type (detect_type msg))
    (cl:cons ':roi (roi msg))
    (cl:cons ':line_roi (line_roi msg))
    (cl:cons ':image_process_size (image_process_size msg))
    (cl:cons ':lab_min (lab_min msg))
    (cl:cons ':lab_max (lab_max msg))
    (cl:cons ':min_area (min_area msg))
    (cl:cons ':max_area (max_area msg))
))

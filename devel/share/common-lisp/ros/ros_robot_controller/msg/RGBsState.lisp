; Auto-generated. Do not edit!


(cl:in-package ros_robot_controller-msg)


;//! \htmlinclude RGBsState.msg.html

(cl:defclass <RGBsState> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector ros_robot_controller-msg:RGBState)
   :initform (cl:make-array 0 :element-type 'ros_robot_controller-msg:RGBState :initial-element (cl:make-instance 'ros_robot_controller-msg:RGBState))))
)

(cl:defclass RGBsState (<RGBsState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RGBsState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RGBsState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-msg:<RGBsState> is deprecated: use ros_robot_controller-msg:RGBsState instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <RGBsState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:data-val is deprecated.  Use ros_robot_controller-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RGBsState>) ostream)
  "Serializes a message object of type '<RGBsState>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RGBsState>) istream)
  "Deserializes a message object of type '<RGBsState>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_robot_controller-msg:RGBState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RGBsState>)))
  "Returns string type for a message object of type '<RGBsState>"
  "ros_robot_controller/RGBsState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RGBsState)))
  "Returns string type for a message object of type 'RGBsState"
  "ros_robot_controller/RGBsState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RGBsState>)))
  "Returns md5sum for a message object of type '<RGBsState>"
  "cb5dfd3060b85c0fec6981d83d7c1830")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RGBsState)))
  "Returns md5sum for a message object of type 'RGBsState"
  "cb5dfd3060b85c0fec6981d83d7c1830")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RGBsState>)))
  "Returns full string definition for message of type '<RGBsState>"
  (cl:format cl:nil "ros_robot_controller/RGBState[] data~%~%================================================================================~%MSG: ros_robot_controller/RGBState~%uint8 id~%uint8 r~%uint8 g~%uint8 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RGBsState)))
  "Returns full string definition for message of type 'RGBsState"
  (cl:format cl:nil "ros_robot_controller/RGBState[] data~%~%================================================================================~%MSG: ros_robot_controller/RGBState~%uint8 id~%uint8 r~%uint8 g~%uint8 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RGBsState>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RGBsState>))
  "Converts a ROS message object to a list"
  (cl:list 'RGBsState
    (cl:cons ':data (data msg))
))

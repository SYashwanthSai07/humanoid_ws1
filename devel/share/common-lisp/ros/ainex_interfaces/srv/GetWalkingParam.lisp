; Auto-generated. Do not edit!


(cl:in-package ainex_interfaces-srv)


;//! \htmlinclude GetWalkingParam-request.msg.html

(cl:defclass <GetWalkingParam-request> (roslisp-msg-protocol:ros-message)
  ((get_param
    :reader get_param
    :initarg :get_param
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetWalkingParam-request (<GetWalkingParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWalkingParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWalkingParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-srv:<GetWalkingParam-request> is deprecated: use ainex_interfaces-srv:GetWalkingParam-request instead.")))

(cl:ensure-generic-function 'get_param-val :lambda-list '(m))
(cl:defmethod get_param-val ((m <GetWalkingParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-srv:get_param-val is deprecated.  Use ainex_interfaces-srv:get_param instead.")
  (get_param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWalkingParam-request>) ostream)
  "Serializes a message object of type '<GetWalkingParam-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_param) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWalkingParam-request>) istream)
  "Deserializes a message object of type '<GetWalkingParam-request>"
    (cl:setf (cl:slot-value msg 'get_param) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWalkingParam-request>)))
  "Returns string type for a service object of type '<GetWalkingParam-request>"
  "ainex_interfaces/GetWalkingParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWalkingParam-request)))
  "Returns string type for a service object of type 'GetWalkingParam-request"
  "ainex_interfaces/GetWalkingParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWalkingParam-request>)))
  "Returns md5sum for a message object of type '<GetWalkingParam-request>"
  "eb0635e28cd7c7a73020918163e1e751")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWalkingParam-request)))
  "Returns md5sum for a message object of type 'GetWalkingParam-request"
  "eb0635e28cd7c7a73020918163e1e751")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWalkingParam-request>)))
  "Returns full string definition for message of type '<GetWalkingParam-request>"
  (cl:format cl:nil "bool            get_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWalkingParam-request)))
  "Returns full string definition for message of type 'GetWalkingParam-request"
  (cl:format cl:nil "bool            get_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWalkingParam-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWalkingParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWalkingParam-request
    (cl:cons ':get_param (get_param msg))
))
;//! \htmlinclude GetWalkingParam-response.msg.html

(cl:defclass <GetWalkingParam-response> (roslisp-msg-protocol:ros-message)
  ((parameters
    :reader parameters
    :initarg :parameters
    :type ainex_interfaces-msg:WalkingParam
    :initform (cl:make-instance 'ainex_interfaces-msg:WalkingParam)))
)

(cl:defclass GetWalkingParam-response (<GetWalkingParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWalkingParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWalkingParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-srv:<GetWalkingParam-response> is deprecated: use ainex_interfaces-srv:GetWalkingParam-response instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <GetWalkingParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-srv:parameters-val is deprecated.  Use ainex_interfaces-srv:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWalkingParam-response>) ostream)
  "Serializes a message object of type '<GetWalkingParam-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parameters) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWalkingParam-response>) istream)
  "Deserializes a message object of type '<GetWalkingParam-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parameters) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWalkingParam-response>)))
  "Returns string type for a service object of type '<GetWalkingParam-response>"
  "ainex_interfaces/GetWalkingParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWalkingParam-response)))
  "Returns string type for a service object of type 'GetWalkingParam-response"
  "ainex_interfaces/GetWalkingParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWalkingParam-response>)))
  "Returns md5sum for a message object of type '<GetWalkingParam-response>"
  "eb0635e28cd7c7a73020918163e1e751")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWalkingParam-response)))
  "Returns md5sum for a message object of type 'GetWalkingParam-response"
  "eb0635e28cd7c7a73020918163e1e751")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWalkingParam-response>)))
  "Returns full string definition for message of type '<GetWalkingParam-response>"
  (cl:format cl:nil "WalkingParam    parameters~%~%================================================================================~%MSG: ainex_interfaces/WalkingParam~%####### walking init pose #######~%float32 init_x_offset~%float32 init_y_offset~%float32 init_z_offset~%float32 init_roll_offset~%float32 init_pitch_offset~%float32 init_yaw_offset~%~%####### time parameter #####~%float32 period_time~%float32 dsp_ratio~%float32 step_fb_ratio~%uint32 period_times~%~%########## walking parameter ########~%float32 x_move_amplitude~%float32 y_move_amplitude~%float32 z_move_amplitude~%float32 angle_move_amplitude~%bool move_aim_on~%float32 arm_swing_gain~%float32 y_swap_amplitude~%float32 z_swap_amplitude~%float32 pelvis_offset~%float32 hip_pitch_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWalkingParam-response)))
  "Returns full string definition for message of type 'GetWalkingParam-response"
  (cl:format cl:nil "WalkingParam    parameters~%~%================================================================================~%MSG: ainex_interfaces/WalkingParam~%####### walking init pose #######~%float32 init_x_offset~%float32 init_y_offset~%float32 init_z_offset~%float32 init_roll_offset~%float32 init_pitch_offset~%float32 init_yaw_offset~%~%####### time parameter #####~%float32 period_time~%float32 dsp_ratio~%float32 step_fb_ratio~%uint32 period_times~%~%########## walking parameter ########~%float32 x_move_amplitude~%float32 y_move_amplitude~%float32 z_move_amplitude~%float32 angle_move_amplitude~%bool move_aim_on~%float32 arm_swing_gain~%float32 y_swap_amplitude~%float32 z_swap_amplitude~%float32 pelvis_offset~%float32 hip_pitch_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWalkingParam-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWalkingParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWalkingParam-response
    (cl:cons ':parameters (parameters msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWalkingParam)))
  'GetWalkingParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWalkingParam)))
  'GetWalkingParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWalkingParam)))
  "Returns string type for a service object of type '<GetWalkingParam>"
  "ainex_interfaces/GetWalkingParam")
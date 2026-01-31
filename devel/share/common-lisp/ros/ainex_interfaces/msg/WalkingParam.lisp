; Auto-generated. Do not edit!


(cl:in-package ainex_interfaces-msg)


;//! \htmlinclude WalkingParam.msg.html

(cl:defclass <WalkingParam> (roslisp-msg-protocol:ros-message)
  ((init_x_offset
    :reader init_x_offset
    :initarg :init_x_offset
    :type cl:float
    :initform 0.0)
   (init_y_offset
    :reader init_y_offset
    :initarg :init_y_offset
    :type cl:float
    :initform 0.0)
   (init_z_offset
    :reader init_z_offset
    :initarg :init_z_offset
    :type cl:float
    :initform 0.0)
   (init_roll_offset
    :reader init_roll_offset
    :initarg :init_roll_offset
    :type cl:float
    :initform 0.0)
   (init_pitch_offset
    :reader init_pitch_offset
    :initarg :init_pitch_offset
    :type cl:float
    :initform 0.0)
   (init_yaw_offset
    :reader init_yaw_offset
    :initarg :init_yaw_offset
    :type cl:float
    :initform 0.0)
   (period_time
    :reader period_time
    :initarg :period_time
    :type cl:float
    :initform 0.0)
   (dsp_ratio
    :reader dsp_ratio
    :initarg :dsp_ratio
    :type cl:float
    :initform 0.0)
   (step_fb_ratio
    :reader step_fb_ratio
    :initarg :step_fb_ratio
    :type cl:float
    :initform 0.0)
   (period_times
    :reader period_times
    :initarg :period_times
    :type cl:integer
    :initform 0)
   (x_move_amplitude
    :reader x_move_amplitude
    :initarg :x_move_amplitude
    :type cl:float
    :initform 0.0)
   (y_move_amplitude
    :reader y_move_amplitude
    :initarg :y_move_amplitude
    :type cl:float
    :initform 0.0)
   (z_move_amplitude
    :reader z_move_amplitude
    :initarg :z_move_amplitude
    :type cl:float
    :initform 0.0)
   (angle_move_amplitude
    :reader angle_move_amplitude
    :initarg :angle_move_amplitude
    :type cl:float
    :initform 0.0)
   (move_aim_on
    :reader move_aim_on
    :initarg :move_aim_on
    :type cl:boolean
    :initform cl:nil)
   (arm_swing_gain
    :reader arm_swing_gain
    :initarg :arm_swing_gain
    :type cl:float
    :initform 0.0)
   (y_swap_amplitude
    :reader y_swap_amplitude
    :initarg :y_swap_amplitude
    :type cl:float
    :initform 0.0)
   (z_swap_amplitude
    :reader z_swap_amplitude
    :initarg :z_swap_amplitude
    :type cl:float
    :initform 0.0)
   (pelvis_offset
    :reader pelvis_offset
    :initarg :pelvis_offset
    :type cl:float
    :initform 0.0)
   (hip_pitch_offset
    :reader hip_pitch_offset
    :initarg :hip_pitch_offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass WalkingParam (<WalkingParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WalkingParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WalkingParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ainex_interfaces-msg:<WalkingParam> is deprecated: use ainex_interfaces-msg:WalkingParam instead.")))

(cl:ensure-generic-function 'init_x_offset-val :lambda-list '(m))
(cl:defmethod init_x_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:init_x_offset-val is deprecated.  Use ainex_interfaces-msg:init_x_offset instead.")
  (init_x_offset m))

(cl:ensure-generic-function 'init_y_offset-val :lambda-list '(m))
(cl:defmethod init_y_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:init_y_offset-val is deprecated.  Use ainex_interfaces-msg:init_y_offset instead.")
  (init_y_offset m))

(cl:ensure-generic-function 'init_z_offset-val :lambda-list '(m))
(cl:defmethod init_z_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:init_z_offset-val is deprecated.  Use ainex_interfaces-msg:init_z_offset instead.")
  (init_z_offset m))

(cl:ensure-generic-function 'init_roll_offset-val :lambda-list '(m))
(cl:defmethod init_roll_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:init_roll_offset-val is deprecated.  Use ainex_interfaces-msg:init_roll_offset instead.")
  (init_roll_offset m))

(cl:ensure-generic-function 'init_pitch_offset-val :lambda-list '(m))
(cl:defmethod init_pitch_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:init_pitch_offset-val is deprecated.  Use ainex_interfaces-msg:init_pitch_offset instead.")
  (init_pitch_offset m))

(cl:ensure-generic-function 'init_yaw_offset-val :lambda-list '(m))
(cl:defmethod init_yaw_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:init_yaw_offset-val is deprecated.  Use ainex_interfaces-msg:init_yaw_offset instead.")
  (init_yaw_offset m))

(cl:ensure-generic-function 'period_time-val :lambda-list '(m))
(cl:defmethod period_time-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:period_time-val is deprecated.  Use ainex_interfaces-msg:period_time instead.")
  (period_time m))

(cl:ensure-generic-function 'dsp_ratio-val :lambda-list '(m))
(cl:defmethod dsp_ratio-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:dsp_ratio-val is deprecated.  Use ainex_interfaces-msg:dsp_ratio instead.")
  (dsp_ratio m))

(cl:ensure-generic-function 'step_fb_ratio-val :lambda-list '(m))
(cl:defmethod step_fb_ratio-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:step_fb_ratio-val is deprecated.  Use ainex_interfaces-msg:step_fb_ratio instead.")
  (step_fb_ratio m))

(cl:ensure-generic-function 'period_times-val :lambda-list '(m))
(cl:defmethod period_times-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:period_times-val is deprecated.  Use ainex_interfaces-msg:period_times instead.")
  (period_times m))

(cl:ensure-generic-function 'x_move_amplitude-val :lambda-list '(m))
(cl:defmethod x_move_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:x_move_amplitude-val is deprecated.  Use ainex_interfaces-msg:x_move_amplitude instead.")
  (x_move_amplitude m))

(cl:ensure-generic-function 'y_move_amplitude-val :lambda-list '(m))
(cl:defmethod y_move_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:y_move_amplitude-val is deprecated.  Use ainex_interfaces-msg:y_move_amplitude instead.")
  (y_move_amplitude m))

(cl:ensure-generic-function 'z_move_amplitude-val :lambda-list '(m))
(cl:defmethod z_move_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:z_move_amplitude-val is deprecated.  Use ainex_interfaces-msg:z_move_amplitude instead.")
  (z_move_amplitude m))

(cl:ensure-generic-function 'angle_move_amplitude-val :lambda-list '(m))
(cl:defmethod angle_move_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:angle_move_amplitude-val is deprecated.  Use ainex_interfaces-msg:angle_move_amplitude instead.")
  (angle_move_amplitude m))

(cl:ensure-generic-function 'move_aim_on-val :lambda-list '(m))
(cl:defmethod move_aim_on-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:move_aim_on-val is deprecated.  Use ainex_interfaces-msg:move_aim_on instead.")
  (move_aim_on m))

(cl:ensure-generic-function 'arm_swing_gain-val :lambda-list '(m))
(cl:defmethod arm_swing_gain-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:arm_swing_gain-val is deprecated.  Use ainex_interfaces-msg:arm_swing_gain instead.")
  (arm_swing_gain m))

(cl:ensure-generic-function 'y_swap_amplitude-val :lambda-list '(m))
(cl:defmethod y_swap_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:y_swap_amplitude-val is deprecated.  Use ainex_interfaces-msg:y_swap_amplitude instead.")
  (y_swap_amplitude m))

(cl:ensure-generic-function 'z_swap_amplitude-val :lambda-list '(m))
(cl:defmethod z_swap_amplitude-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:z_swap_amplitude-val is deprecated.  Use ainex_interfaces-msg:z_swap_amplitude instead.")
  (z_swap_amplitude m))

(cl:ensure-generic-function 'pelvis_offset-val :lambda-list '(m))
(cl:defmethod pelvis_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:pelvis_offset-val is deprecated.  Use ainex_interfaces-msg:pelvis_offset instead.")
  (pelvis_offset m))

(cl:ensure-generic-function 'hip_pitch_offset-val :lambda-list '(m))
(cl:defmethod hip_pitch_offset-val ((m <WalkingParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ainex_interfaces-msg:hip_pitch_offset-val is deprecated.  Use ainex_interfaces-msg:hip_pitch_offset instead.")
  (hip_pitch_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WalkingParam>) ostream)
  "Serializes a message object of type '<WalkingParam>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_x_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_y_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_z_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_roll_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_pitch_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_yaw_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'period_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dsp_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'step_fb_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'period_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'period_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'period_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'period_times)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_move_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_move_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z_move_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_move_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'move_aim_on) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm_swing_gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_swap_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z_swap_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pelvis_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hip_pitch_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WalkingParam>) istream)
  "Deserializes a message object of type '<WalkingParam>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_x_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_y_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_z_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_roll_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_pitch_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_yaw_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'period_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dsp_ratio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step_fb_ratio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'period_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'period_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'period_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'period_times)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_move_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_move_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_move_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_move_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'move_aim_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_swing_gain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_swap_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_swap_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pelvis_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hip_pitch_offset) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WalkingParam>)))
  "Returns string type for a message object of type '<WalkingParam>"
  "ainex_interfaces/WalkingParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WalkingParam)))
  "Returns string type for a message object of type 'WalkingParam"
  "ainex_interfaces/WalkingParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WalkingParam>)))
  "Returns md5sum for a message object of type '<WalkingParam>"
  "33a0fc392acf75f9ca94c3da5d14814a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WalkingParam)))
  "Returns md5sum for a message object of type 'WalkingParam"
  "33a0fc392acf75f9ca94c3da5d14814a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WalkingParam>)))
  "Returns full string definition for message of type '<WalkingParam>"
  (cl:format cl:nil "####### walking init pose #######~%float32 init_x_offset~%float32 init_y_offset~%float32 init_z_offset~%float32 init_roll_offset~%float32 init_pitch_offset~%float32 init_yaw_offset~%~%####### time parameter #####~%float32 period_time~%float32 dsp_ratio~%float32 step_fb_ratio~%uint32 period_times~%~%########## walking parameter ########~%float32 x_move_amplitude~%float32 y_move_amplitude~%float32 z_move_amplitude~%float32 angle_move_amplitude~%bool move_aim_on~%float32 arm_swing_gain~%float32 y_swap_amplitude~%float32 z_swap_amplitude~%float32 pelvis_offset~%float32 hip_pitch_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WalkingParam)))
  "Returns full string definition for message of type 'WalkingParam"
  (cl:format cl:nil "####### walking init pose #######~%float32 init_x_offset~%float32 init_y_offset~%float32 init_z_offset~%float32 init_roll_offset~%float32 init_pitch_offset~%float32 init_yaw_offset~%~%####### time parameter #####~%float32 period_time~%float32 dsp_ratio~%float32 step_fb_ratio~%uint32 period_times~%~%########## walking parameter ########~%float32 x_move_amplitude~%float32 y_move_amplitude~%float32 z_move_amplitude~%float32 angle_move_amplitude~%bool move_aim_on~%float32 arm_swing_gain~%float32 y_swap_amplitude~%float32 z_swap_amplitude~%float32 pelvis_offset~%float32 hip_pitch_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WalkingParam>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WalkingParam>))
  "Converts a ROS message object to a list"
  (cl:list 'WalkingParam
    (cl:cons ':init_x_offset (init_x_offset msg))
    (cl:cons ':init_y_offset (init_y_offset msg))
    (cl:cons ':init_z_offset (init_z_offset msg))
    (cl:cons ':init_roll_offset (init_roll_offset msg))
    (cl:cons ':init_pitch_offset (init_pitch_offset msg))
    (cl:cons ':init_yaw_offset (init_yaw_offset msg))
    (cl:cons ':period_time (period_time msg))
    (cl:cons ':dsp_ratio (dsp_ratio msg))
    (cl:cons ':step_fb_ratio (step_fb_ratio msg))
    (cl:cons ':period_times (period_times msg))
    (cl:cons ':x_move_amplitude (x_move_amplitude msg))
    (cl:cons ':y_move_amplitude (y_move_amplitude msg))
    (cl:cons ':z_move_amplitude (z_move_amplitude msg))
    (cl:cons ':angle_move_amplitude (angle_move_amplitude msg))
    (cl:cons ':move_aim_on (move_aim_on msg))
    (cl:cons ':arm_swing_gain (arm_swing_gain msg))
    (cl:cons ':y_swap_amplitude (y_swap_amplitude msg))
    (cl:cons ':z_swap_amplitude (z_swap_amplitude msg))
    (cl:cons ':pelvis_offset (pelvis_offset msg))
    (cl:cons ':hip_pitch_offset (hip_pitch_offset msg))
))

;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::GetWalkingParam)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'GetWalkingParam (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::GETWALKINGPARAM")
  (make-package "AINEX_INTERFACES::GETWALKINGPARAM"))
(unless (find-package "AINEX_INTERFACES::GETWALKINGPARAMREQUEST")
  (make-package "AINEX_INTERFACES::GETWALKINGPARAMREQUEST"))
(unless (find-package "AINEX_INTERFACES::GETWALKINGPARAMRESPONSE")
  (make-package "AINEX_INTERFACES::GETWALKINGPARAMRESPONSE"))

(in-package "ROS")





(defclass ainex_interfaces::GetWalkingParamRequest
  :super ros::object
  :slots (_get_param ))

(defmethod ainex_interfaces::GetWalkingParamRequest
  (:init
   (&key
    ((:get_param __get_param) nil)
    )
   (send-super :init)
   (setq _get_param __get_param)
   self)
  (:get_param
   (&optional __get_param)
   (if __get_param (setq _get_param __get_param)) _get_param)
  (:serialization-length
   ()
   (+
    ;; bool _get_param
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _get_param
       (if _get_param (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _get_param
     (setq _get_param (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ainex_interfaces::GetWalkingParamResponse
  :super ros::object
  :slots (_parameters ))

(defmethod ainex_interfaces::GetWalkingParamResponse
  (:init
   (&key
    ((:parameters __parameters) (instance ainex_interfaces::WalkingParam :init))
    )
   (send-super :init)
   (setq _parameters __parameters)
   self)
  (:parameters
   (&rest __parameters)
   (if (keywordp (car __parameters))
       (send* _parameters __parameters)
     (progn
       (if __parameters (setq _parameters (car __parameters)))
       _parameters)))
  (:serialization-length
   ()
   (+
    ;; ainex_interfaces/WalkingParam _parameters
    (send _parameters :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ainex_interfaces/WalkingParam _parameters
       (send _parameters :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ainex_interfaces/WalkingParam _parameters
     (send _parameters :deserialize buf ptr-) (incf ptr- (send _parameters :serialization-length))
   ;;
   self)
  )

(defclass ainex_interfaces::GetWalkingParam
  :super ros::object
  :slots ())

(setf (get ainex_interfaces::GetWalkingParam :md5sum-) "eb0635e28cd7c7a73020918163e1e751")
(setf (get ainex_interfaces::GetWalkingParam :datatype-) "ainex_interfaces/GetWalkingParam")
(setf (get ainex_interfaces::GetWalkingParam :request) ainex_interfaces::GetWalkingParamRequest)
(setf (get ainex_interfaces::GetWalkingParam :response) ainex_interfaces::GetWalkingParamResponse)

(defmethod ainex_interfaces::GetWalkingParamRequest
  (:response () (instance ainex_interfaces::GetWalkingParamResponse :init)))

(setf (get ainex_interfaces::GetWalkingParamRequest :md5sum-) "eb0635e28cd7c7a73020918163e1e751")
(setf (get ainex_interfaces::GetWalkingParamRequest :datatype-) "ainex_interfaces/GetWalkingParamRequest")
(setf (get ainex_interfaces::GetWalkingParamRequest :definition-)
      "bool            get_param
---
WalkingParam    parameters

================================================================================
MSG: ainex_interfaces/WalkingParam
####### walking init pose #######
float32 init_x_offset
float32 init_y_offset
float32 init_z_offset
float32 init_roll_offset
float32 init_pitch_offset
float32 init_yaw_offset

####### time parameter #####
float32 period_time
float32 dsp_ratio
float32 step_fb_ratio
uint32 period_times

########## walking parameter ########
float32 x_move_amplitude
float32 y_move_amplitude
float32 z_move_amplitude
float32 angle_move_amplitude
bool move_aim_on
float32 arm_swing_gain
float32 y_swap_amplitude
float32 z_swap_amplitude
float32 pelvis_offset
float32 hip_pitch_offset
")

(setf (get ainex_interfaces::GetWalkingParamResponse :md5sum-) "eb0635e28cd7c7a73020918163e1e751")
(setf (get ainex_interfaces::GetWalkingParamResponse :datatype-) "ainex_interfaces/GetWalkingParamResponse")
(setf (get ainex_interfaces::GetWalkingParamResponse :definition-)
      "bool            get_param
---
WalkingParam    parameters

================================================================================
MSG: ainex_interfaces/WalkingParam
####### walking init pose #######
float32 init_x_offset
float32 init_y_offset
float32 init_z_offset
float32 init_roll_offset
float32 init_pitch_offset
float32 init_yaw_offset

####### time parameter #####
float32 period_time
float32 dsp_ratio
float32 step_fb_ratio
uint32 period_times

########## walking parameter ########
float32 x_move_amplitude
float32 y_move_amplitude
float32 z_move_amplitude
float32 angle_move_amplitude
bool move_aim_on
float32 arm_swing_gain
float32 y_swap_amplitude
float32 z_swap_amplitude
float32 pelvis_offset
float32 hip_pitch_offset
")



(provide :ainex_interfaces/GetWalkingParam "eb0635e28cd7c7a73020918163e1e751")



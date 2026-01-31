;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::SetWalkingParam)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'SetWalkingParam (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::SETWALKINGPARAM")
  (make-package "AINEX_INTERFACES::SETWALKINGPARAM"))
(unless (find-package "AINEX_INTERFACES::SETWALKINGPARAMREQUEST")
  (make-package "AINEX_INTERFACES::SETWALKINGPARAMREQUEST"))
(unless (find-package "AINEX_INTERFACES::SETWALKINGPARAMRESPONSE")
  (make-package "AINEX_INTERFACES::SETWALKINGPARAMRESPONSE"))

(in-package "ROS")





(defclass ainex_interfaces::SetWalkingParamRequest
  :super ros::object
  :slots (_parameters ))

(defmethod ainex_interfaces::SetWalkingParamRequest
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

(defclass ainex_interfaces::SetWalkingParamResponse
  :super ros::object
  :slots (_result ))

(defmethod ainex_interfaces::SetWalkingParamResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ainex_interfaces::SetWalkingParam
  :super ros::object
  :slots ())

(setf (get ainex_interfaces::SetWalkingParam :md5sum-) "029b54a504db3afb97699271da6b28e2")
(setf (get ainex_interfaces::SetWalkingParam :datatype-) "ainex_interfaces/SetWalkingParam")
(setf (get ainex_interfaces::SetWalkingParam :request) ainex_interfaces::SetWalkingParamRequest)
(setf (get ainex_interfaces::SetWalkingParam :response) ainex_interfaces::SetWalkingParamResponse)

(defmethod ainex_interfaces::SetWalkingParamRequest
  (:response () (instance ainex_interfaces::SetWalkingParamResponse :init)))

(setf (get ainex_interfaces::SetWalkingParamRequest :md5sum-) "029b54a504db3afb97699271da6b28e2")
(setf (get ainex_interfaces::SetWalkingParamRequest :datatype-) "ainex_interfaces/SetWalkingParamRequest")
(setf (get ainex_interfaces::SetWalkingParamRequest :definition-)
      "WalkingParam    parameters

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
---
bool            result
")

(setf (get ainex_interfaces::SetWalkingParamResponse :md5sum-) "029b54a504db3afb97699271da6b28e2")
(setf (get ainex_interfaces::SetWalkingParamResponse :datatype-) "ainex_interfaces/SetWalkingParamResponse")
(setf (get ainex_interfaces::SetWalkingParamResponse :definition-)
      "WalkingParam    parameters

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
---
bool            result
")



(provide :ainex_interfaces/SetWalkingParam "029b54a504db3afb97699271da6b28e2")



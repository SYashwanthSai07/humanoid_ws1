;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::LineROI)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'LineROI (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::LINEROI")
  (make-package "AINEX_INTERFACES::LINEROI"))

(in-package "ROS")
;;//! \htmlinclude LineROI.msg.html


(defclass ainex_interfaces::LineROI
  :super ros::object
  :slots (_up _center _down ))

(defmethod ainex_interfaces::LineROI
  (:init
   (&key
    ((:up __up) (instance ainex_interfaces::ROI :init))
    ((:center __center) (instance ainex_interfaces::ROI :init))
    ((:down __down) (instance ainex_interfaces::ROI :init))
    )
   (send-super :init)
   (setq _up __up)
   (setq _center __center)
   (setq _down __down)
   self)
  (:up
   (&rest __up)
   (if (keywordp (car __up))
       (send* _up __up)
     (progn
       (if __up (setq _up (car __up)))
       _up)))
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:down
   (&rest __down)
   (if (keywordp (car __down))
       (send* _down __down)
     (progn
       (if __down (setq _down (car __down)))
       _down)))
  (:serialization-length
   ()
   (+
    ;; ainex_interfaces/ROI _up
    (send _up :serialization-length)
    ;; ainex_interfaces/ROI _center
    (send _center :serialization-length)
    ;; ainex_interfaces/ROI _down
    (send _down :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ainex_interfaces/ROI _up
       (send _up :serialize s)
     ;; ainex_interfaces/ROI _center
       (send _center :serialize s)
     ;; ainex_interfaces/ROI _down
       (send _down :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ainex_interfaces/ROI _up
     (send _up :deserialize buf ptr-) (incf ptr- (send _up :serialization-length))
   ;; ainex_interfaces/ROI _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; ainex_interfaces/ROI _down
     (send _down :deserialize buf ptr-) (incf ptr- (send _down :serialization-length))
   ;;
   self)
  )

(setf (get ainex_interfaces::LineROI :md5sum-) "bccdc6e8e70cb622e1827d4df83b58fa")
(setf (get ainex_interfaces::LineROI :datatype-) "ainex_interfaces/LineROI")
(setf (get ainex_interfaces::LineROI :definition-)
      "ainex_interfaces/ROI up
ainex_interfaces/ROI center
ainex_interfaces/ROI down

================================================================================
MSG: ainex_interfaces/ROI
int32 y_min
int32 y_max
int32 x_min
int32 x_max

")



(provide :ainex_interfaces/LineROI "bccdc6e8e70cb622e1827d4df83b58fa")



;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::ROI)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'ROI (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::ROI")
  (make-package "AINEX_INTERFACES::ROI"))

(in-package "ROS")
;;//! \htmlinclude ROI.msg.html


(defclass ainex_interfaces::ROI
  :super ros::object
  :slots (_y_min _y_max _x_min _x_max ))

(defmethod ainex_interfaces::ROI
  (:init
   (&key
    ((:y_min __y_min) 0)
    ((:y_max __y_max) 0)
    ((:x_min __x_min) 0)
    ((:x_max __x_max) 0)
    )
   (send-super :init)
   (setq _y_min (round __y_min))
   (setq _y_max (round __y_max))
   (setq _x_min (round __x_min))
   (setq _x_max (round __x_max))
   self)
  (:y_min
   (&optional __y_min)
   (if __y_min (setq _y_min __y_min)) _y_min)
  (:y_max
   (&optional __y_max)
   (if __y_max (setq _y_max __y_max)) _y_max)
  (:x_min
   (&optional __x_min)
   (if __x_min (setq _x_min __x_min)) _x_min)
  (:x_max
   (&optional __x_max)
   (if __x_max (setq _x_max __x_max)) _x_max)
  (:serialization-length
   ()
   (+
    ;; int32 _y_min
    4
    ;; int32 _y_max
    4
    ;; int32 _x_min
    4
    ;; int32 _x_max
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _y_min
       (write-long _y_min s)
     ;; int32 _y_max
       (write-long _y_max s)
     ;; int32 _x_min
       (write-long _x_min s)
     ;; int32 _x_max
       (write-long _x_max s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _y_min
     (setq _y_min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y_max
     (setq _y_max (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x_min
     (setq _x_min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x_max
     (setq _x_max (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ainex_interfaces::ROI :md5sum-) "2b00faa7a7bb95e05cfa78034bc38cd9")
(setf (get ainex_interfaces::ROI :datatype-) "ainex_interfaces/ROI")
(setf (get ainex_interfaces::ROI :definition-)
      "int32 y_min
int32 y_max
int32 x_min
int32 x_max

")



(provide :ainex_interfaces/ROI "2b00faa7a7bb95e05cfa78034bc38cd9")



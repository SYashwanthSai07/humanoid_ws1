;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::ColorsDetect)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'ColorsDetect (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::COLORSDETECT")
  (make-package "AINEX_INTERFACES::COLORSDETECT"))

(in-package "ROS")
;;//! \htmlinclude ColorsDetect.msg.html


(defclass ainex_interfaces::ColorsDetect
  :super ros::object
  :slots (_data ))

(defmethod ainex_interfaces::ColorsDetect
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push (instance ainex_interfaces::ColorDetect :init) r)) r))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; ainex_interfaces/ColorDetect[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ainex_interfaces/ColorDetect[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ainex_interfaces/ColorDetect[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance ainex_interfaces::ColorDetect :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ainex_interfaces::ColorsDetect :md5sum-) "e8024ffa57fcf070b87e6db34ea1620a")
(setf (get ainex_interfaces::ColorsDetect :datatype-) "ainex_interfaces/ColorsDetect")
(setf (get ainex_interfaces::ColorsDetect :definition-)
      "ainex_interfaces/ColorDetect[] data

================================================================================
MSG: ainex_interfaces/ColorDetect
string color_name
bool use_name
string detect_type
ainex_interfaces/ROI roi
ainex_interfaces/LineROI line_roi
uint32[] image_process_size
int16[] lab_min
int16[] lab_max
float64 min_area
float64 max_area

================================================================================
MSG: ainex_interfaces/ROI
int32 y_min
int32 y_max
int32 x_min
int32 x_max

================================================================================
MSG: ainex_interfaces/LineROI
ainex_interfaces/ROI up
ainex_interfaces/ROI center
ainex_interfaces/ROI down

")



(provide :ainex_interfaces/ColorsDetect "e8024ffa57fcf070b87e6db34ea1620a")



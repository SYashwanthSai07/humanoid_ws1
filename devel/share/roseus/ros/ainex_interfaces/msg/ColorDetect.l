;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::ColorDetect)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'ColorDetect (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::COLORDETECT")
  (make-package "AINEX_INTERFACES::COLORDETECT"))

(in-package "ROS")
;;//! \htmlinclude ColorDetect.msg.html


(defclass ainex_interfaces::ColorDetect
  :super ros::object
  :slots (_color_name _use_name _detect_type _roi _line_roi _image_process_size _lab_min _lab_max _min_area _max_area ))

(defmethod ainex_interfaces::ColorDetect
  (:init
   (&key
    ((:color_name __color_name) "")
    ((:use_name __use_name) nil)
    ((:detect_type __detect_type) "")
    ((:roi __roi) (instance ainex_interfaces::ROI :init))
    ((:line_roi __line_roi) (instance ainex_interfaces::LineROI :init))
    ((:image_process_size __image_process_size) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lab_min __lab_min) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lab_max __lab_max) (make-array 0 :initial-element 0 :element-type :integer))
    ((:min_area __min_area) 0.0)
    ((:max_area __max_area) 0.0)
    )
   (send-super :init)
   (setq _color_name (string __color_name))
   (setq _use_name __use_name)
   (setq _detect_type (string __detect_type))
   (setq _roi __roi)
   (setq _line_roi __line_roi)
   (setq _image_process_size __image_process_size)
   (setq _lab_min __lab_min)
   (setq _lab_max __lab_max)
   (setq _min_area (float __min_area))
   (setq _max_area (float __max_area))
   self)
  (:color_name
   (&optional __color_name)
   (if __color_name (setq _color_name __color_name)) _color_name)
  (:use_name
   (&optional __use_name)
   (if __use_name (setq _use_name __use_name)) _use_name)
  (:detect_type
   (&optional __detect_type)
   (if __detect_type (setq _detect_type __detect_type)) _detect_type)
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:line_roi
   (&rest __line_roi)
   (if (keywordp (car __line_roi))
       (send* _line_roi __line_roi)
     (progn
       (if __line_roi (setq _line_roi (car __line_roi)))
       _line_roi)))
  (:image_process_size
   (&optional __image_process_size)
   (if __image_process_size (setq _image_process_size __image_process_size)) _image_process_size)
  (:lab_min
   (&optional __lab_min)
   (if __lab_min (setq _lab_min __lab_min)) _lab_min)
  (:lab_max
   (&optional __lab_max)
   (if __lab_max (setq _lab_max __lab_max)) _lab_max)
  (:min_area
   (&optional __min_area)
   (if __min_area (setq _min_area __min_area)) _min_area)
  (:max_area
   (&optional __max_area)
   (if __max_area (setq _max_area __max_area)) _max_area)
  (:serialization-length
   ()
   (+
    ;; string _color_name
    4 (length _color_name)
    ;; bool _use_name
    1
    ;; string _detect_type
    4 (length _detect_type)
    ;; ainex_interfaces/ROI _roi
    (send _roi :serialization-length)
    ;; ainex_interfaces/LineROI _line_roi
    (send _line_roi :serialization-length)
    ;; uint32[] _image_process_size
    (* 4    (length _image_process_size)) 4
    ;; int16[] _lab_min
    (* 2    (length _lab_min)) 4
    ;; int16[] _lab_max
    (* 2    (length _lab_max)) 4
    ;; float64 _min_area
    8
    ;; float64 _max_area
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _color_name
       (write-long (length _color_name) s) (princ _color_name s)
     ;; bool _use_name
       (if _use_name (write-byte -1 s) (write-byte 0 s))
     ;; string _detect_type
       (write-long (length _detect_type) s) (princ _detect_type s)
     ;; ainex_interfaces/ROI _roi
       (send _roi :serialize s)
     ;; ainex_interfaces/LineROI _line_roi
       (send _line_roi :serialize s)
     ;; uint32[] _image_process_size
     (write-long (length _image_process_size) s)
     (dotimes (i (length _image_process_size))
       (write-long (elt _image_process_size i) s)
       )
     ;; int16[] _lab_min
     (write-long (length _lab_min) s)
     (dotimes (i (length _lab_min))
       (write-word (elt _lab_min i) s)
       )
     ;; int16[] _lab_max
     (write-long (length _lab_max) s)
     (dotimes (i (length _lab_max))
       (write-word (elt _lab_max i) s)
       )
     ;; float64 _min_area
       (sys::poke _min_area (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_area
       (sys::poke _max_area (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _color_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _use_name
     (setq _use_name (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _detect_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detect_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ainex_interfaces/ROI _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;; ainex_interfaces/LineROI _line_roi
     (send _line_roi :deserialize buf ptr-) (incf ptr- (send _line_roi :serialization-length))
   ;; uint32[] _image_process_size
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _image_process_size (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _image_process_size i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int16[] _lab_min
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lab_min (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lab_min i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _lab_max
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lab_max (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lab_max i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float64 _min_area
     (setq _min_area (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_area
     (setq _max_area (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ainex_interfaces::ColorDetect :md5sum-) "7c6d76275e561b8430ce7facd08f9909")
(setf (get ainex_interfaces::ColorDetect :datatype-) "ainex_interfaces/ColorDetect")
(setf (get ainex_interfaces::ColorDetect :definition-)
      "string color_name
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



(provide :ainex_interfaces/ColorDetect "7c6d76275e561b8430ce7facd08f9909")



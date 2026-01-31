;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::ObjectInfo)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'ObjectInfo (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::OBJECTINFO")
  (make-package "AINEX_INTERFACES::OBJECTINFO"))

(in-package "ROS")
;;//! \htmlinclude ObjectInfo.msg.html


(defclass ainex_interfaces::ObjectInfo
  :super ros::object
  :slots (_label _type _width _height _x _y _radius _angle _left_point _right_point ))

(defmethod ainex_interfaces::ObjectInfo
  (:init
   (&key
    ((:label __label) "")
    ((:type __type) "")
    ((:width __width) 0)
    ((:height __height) 0)
    ((:x __x) 0)
    ((:y __y) 0)
    ((:radius __radius) 0)
    ((:angle __angle) 0)
    ((:left_point __left_point) (make-array 0 :initial-element 0 :element-type :integer))
    ((:right_point __right_point) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _type (string __type))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _radius (round __radius))
   (setq _angle (round __angle))
   (setq _left_point __left_point)
   (setq _right_point __right_point)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:left_point
   (&optional __left_point)
   (if __left_point (setq _left_point __left_point)) _left_point)
  (:right_point
   (&optional __right_point)
   (if __right_point (setq _right_point __right_point)) _right_point)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; string _type
    4 (length _type)
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _radius
    4
    ;; int32 _angle
    4
    ;; int32[] _left_point
    (* 4    (length _left_point)) 4
    ;; int32[] _right_point
    (* 4    (length _right_point)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _radius
       (write-long _radius s)
     ;; int32 _angle
       (write-long _angle s)
     ;; int32[] _left_point
     (write-long (length _left_point) s)
     (dotimes (i (length _left_point))
       (write-long (elt _left_point i) s)
       )
     ;; int32[] _right_point
     (write-long (length _right_point) s)
     (dotimes (i (length _right_point))
       (write-long (elt _right_point i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _radius
     (setq _radius (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _angle
     (setq _angle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _left_point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_point (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _left_point i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _right_point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_point (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _right_point i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get ainex_interfaces::ObjectInfo :md5sum-) "0cbea474c999c4405c07e8a92c8435fc")
(setf (get ainex_interfaces::ObjectInfo :datatype-) "ainex_interfaces/ObjectInfo")
(setf (get ainex_interfaces::ObjectInfo :definition-)
      "string label
string type
int32 width
int32 height
int32 x
int32 y
int32 radius
int32 angle
int32[] left_point
int32[] right_point

")



(provide :ainex_interfaces/ObjectInfo "0cbea474c999c4405c07e8a92c8435fc")



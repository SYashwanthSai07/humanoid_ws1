;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::ObjectsInfo)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'ObjectsInfo (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::OBJECTSINFO")
  (make-package "AINEX_INTERFACES::OBJECTSINFO"))

(in-package "ROS")
;;//! \htmlinclude ObjectsInfo.msg.html


(defclass ainex_interfaces::ObjectsInfo
  :super ros::object
  :slots (_data ))

(defmethod ainex_interfaces::ObjectsInfo
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push (instance ainex_interfaces::ObjectInfo :init) r)) r))
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
    ;; ainex_interfaces/ObjectInfo[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ainex_interfaces/ObjectInfo[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ainex_interfaces/ObjectInfo[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance ainex_interfaces::ObjectInfo :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ainex_interfaces::ObjectsInfo :md5sum-) "d2fb73326b72ae8d2e6610c8589c196f")
(setf (get ainex_interfaces::ObjectsInfo :datatype-) "ainex_interfaces/ObjectsInfo")
(setf (get ainex_interfaces::ObjectsInfo :definition-)
      " ainex_interfaces/ObjectInfo[] data

================================================================================
MSG: ainex_interfaces/ObjectInfo
string label
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



(provide :ainex_interfaces/ObjectsInfo "d2fb73326b72ae8d2e6610c8589c196f")



;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::FingerPosition)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'FingerPosition (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::FINGERPOSITION")
  (make-package "AINEX_INTERFACES::FINGERPOSITION"))

(in-package "ROS")
;;//! \htmlinclude FingerPosition.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ainex_interfaces::FingerPosition
  :super ros::object
  :slots (_header _label _points ))

(defmethod ainex_interfaces::FingerPosition
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:label __label) "")
    ((:points __points) (instance ainex_interfaces::PixelPosition :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _label (string __label))
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _label
    4 (length _label)
    ;; ainex_interfaces/PixelPosition _points
    (send _points :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; ainex_interfaces/PixelPosition _points
       (send _points :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ainex_interfaces/PixelPosition _points
     (send _points :deserialize buf ptr-) (incf ptr- (send _points :serialization-length))
   ;;
   self)
  )

(setf (get ainex_interfaces::FingerPosition :md5sum-) "e758c8d7096fb5f61363fb7d7418aeb1")
(setf (get ainex_interfaces::FingerPosition :datatype-) "ainex_interfaces/FingerPosition")
(setf (get ainex_interfaces::FingerPosition :definition-)
      "std_msgs/Header header
string label
ainex_interfaces/PixelPosition points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ainex_interfaces/PixelPosition
float64 x
float64 y
")



(provide :ainex_interfaces/FingerPosition "e758c8d7096fb5f61363fb7d7418aeb1")



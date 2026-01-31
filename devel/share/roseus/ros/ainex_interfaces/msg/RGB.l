;; Auto-generated. Do not edit!


(when (boundp 'ainex_interfaces::RGB)
  (if (not (find-package "AINEX_INTERFACES"))
    (make-package "AINEX_INTERFACES"))
  (shadow 'RGB (find-package "AINEX_INTERFACES")))
(unless (find-package "AINEX_INTERFACES::RGB")
  (make-package "AINEX_INTERFACES::RGB"))

(in-package "ROS")
;;//! \htmlinclude RGB.msg.html


(defclass ainex_interfaces::RGB
  :super ros::object
  :slots (_r _g _b ))

(defmethod ainex_interfaces::RGB
  (:init
   (&key
    ((:r __r) 0)
    ((:g __g) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _r (round __r))
   (setq _g (round __g))
   (setq _b (round __b))
   self)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int16 _r
    2
    ;; int16 _g
    2
    ;; int16 _b
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _r
       (write-word _r s)
     ;; int16 _g
       (write-word _g s)
     ;; int16 _b
       (write-word _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _r
     (setq _r (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _g
     (setq _g (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _b
     (setq _b (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ainex_interfaces::RGB :md5sum-) "2dfe481b7e570e3e4be99cdc0453c9c8")
(setf (get ainex_interfaces::RGB :datatype-) "ainex_interfaces/RGB")
(setf (get ainex_interfaces::RGB :definition-)
      "int16 r
int16 g
int16 b

")



(provide :ainex_interfaces/RGB "2dfe481b7e570e3e4be99cdc0453c9c8")



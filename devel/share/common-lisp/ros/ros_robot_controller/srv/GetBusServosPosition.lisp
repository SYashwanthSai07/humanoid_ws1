; Auto-generated. Do not edit!


(cl:in-package ros_robot_controller-srv)


;//! \htmlinclude GetBusServosPosition-request.msg.html

(cl:defclass <GetBusServosPosition-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass GetBusServosPosition-request (<GetBusServosPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBusServosPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBusServosPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-srv:<GetBusServosPosition-request> is deprecated: use ros_robot_controller-srv:GetBusServosPosition-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetBusServosPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-srv:id-val is deprecated.  Use ros_robot_controller-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBusServosPosition-request>) ostream)
  "Serializes a message object of type '<GetBusServosPosition-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBusServosPosition-request>) istream)
  "Deserializes a message object of type '<GetBusServosPosition-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBusServosPosition-request>)))
  "Returns string type for a service object of type '<GetBusServosPosition-request>"
  "ros_robot_controller/GetBusServosPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBusServosPosition-request)))
  "Returns string type for a service object of type 'GetBusServosPosition-request"
  "ros_robot_controller/GetBusServosPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBusServosPosition-request>)))
  "Returns md5sum for a message object of type '<GetBusServosPosition-request>"
  "3c9b3df543d6a1087f63caf890b57f1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBusServosPosition-request)))
  "Returns md5sum for a message object of type 'GetBusServosPosition-request"
  "3c9b3df543d6a1087f63caf890b57f1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBusServosPosition-request>)))
  "Returns full string definition for message of type '<GetBusServosPosition-request>"
  (cl:format cl:nil "uint8[] id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBusServosPosition-request)))
  "Returns full string definition for message of type 'GetBusServosPosition-request"
  (cl:format cl:nil "uint8[] id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBusServosPosition-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBusServosPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBusServosPosition-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetBusServosPosition-response.msg.html

(cl:defclass <GetBusServosPosition-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (position
    :reader position
    :initarg :position
    :type (cl:vector ros_robot_controller-msg:BusServoPosition)
   :initform (cl:make-array 0 :element-type 'ros_robot_controller-msg:BusServoPosition :initial-element (cl:make-instance 'ros_robot_controller-msg:BusServoPosition))))
)

(cl:defclass GetBusServosPosition-response (<GetBusServosPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBusServosPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBusServosPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-srv:<GetBusServosPosition-response> is deprecated: use ros_robot_controller-srv:GetBusServosPosition-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetBusServosPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-srv:success-val is deprecated.  Use ros_robot_controller-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <GetBusServosPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-srv:position-val is deprecated.  Use ros_robot_controller-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBusServosPosition-response>) ostream)
  "Serializes a message object of type '<GetBusServosPosition-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'position))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBusServosPosition-response>) istream)
  "Deserializes a message object of type '<GetBusServosPosition-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_robot_controller-msg:BusServoPosition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBusServosPosition-response>)))
  "Returns string type for a service object of type '<GetBusServosPosition-response>"
  "ros_robot_controller/GetBusServosPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBusServosPosition-response)))
  "Returns string type for a service object of type 'GetBusServosPosition-response"
  "ros_robot_controller/GetBusServosPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBusServosPosition-response>)))
  "Returns md5sum for a message object of type '<GetBusServosPosition-response>"
  "3c9b3df543d6a1087f63caf890b57f1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBusServosPosition-response)))
  "Returns md5sum for a message object of type 'GetBusServosPosition-response"
  "3c9b3df543d6a1087f63caf890b57f1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBusServosPosition-response>)))
  "Returns full string definition for message of type '<GetBusServosPosition-response>"
  (cl:format cl:nil "bool success~%ros_robot_controller/BusServoPosition[] position~%~%~%================================================================================~%MSG: ros_robot_controller/BusServoPosition~%uint16 id~%uint16 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBusServosPosition-response)))
  "Returns full string definition for message of type 'GetBusServosPosition-response"
  (cl:format cl:nil "bool success~%ros_robot_controller/BusServoPosition[] position~%~%~%================================================================================~%MSG: ros_robot_controller/BusServoPosition~%uint16 id~%uint16 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBusServosPosition-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBusServosPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBusServosPosition-response
    (cl:cons ':success (success msg))
    (cl:cons ':position (position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetBusServosPosition)))
  'GetBusServosPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetBusServosPosition)))
  'GetBusServosPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBusServosPosition)))
  "Returns string type for a service object of type '<GetBusServosPosition>"
  "ros_robot_controller/GetBusServosPosition")
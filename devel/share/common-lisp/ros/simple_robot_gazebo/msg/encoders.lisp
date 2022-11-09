; Auto-generated. Do not edit!


(cl:in-package simple_robot_gazebo-msg)


;//! \htmlinclude encoders.msg.html

(cl:defclass <encoders> (roslisp-msg-protocol:ros-message)
  ((encoderTicks
    :reader encoderTicks
    :initarg :encoderTicks
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0))
)

(cl:defclass encoders (<encoders>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <encoders>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'encoders)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_robot_gazebo-msg:<encoders> is deprecated: use simple_robot_gazebo-msg:encoders instead.")))

(cl:ensure-generic-function 'encoderTicks-val :lambda-list '(m))
(cl:defmethod encoderTicks-val ((m <encoders>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_robot_gazebo-msg:encoderTicks-val is deprecated.  Use simple_robot_gazebo-msg:encoderTicks instead.")
  (encoderTicks m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <encoders>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_robot_gazebo-msg:timeStamp-val is deprecated.  Use simple_robot_gazebo-msg:timeStamp instead.")
  (timeStamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <encoders>) ostream)
  "Serializes a message object of type '<encoders>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'encoderTicks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'encoderTicks))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <encoders>) istream)
  "Deserializes a message object of type '<encoders>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'encoderTicks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'encoderTicks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<encoders>)))
  "Returns string type for a message object of type '<encoders>"
  "simple_robot_gazebo/encoders")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'encoders)))
  "Returns string type for a message object of type 'encoders"
  "simple_robot_gazebo/encoders")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<encoders>)))
  "Returns md5sum for a message object of type '<encoders>"
  "07aba7a5adda19d5b02a03ead81505ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'encoders)))
  "Returns md5sum for a message object of type 'encoders"
  "07aba7a5adda19d5b02a03ead81505ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<encoders>)))
  "Returns full string definition for message of type '<encoders>"
  (cl:format cl:nil "float32[] encoderTicks~%uint32 timeStamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'encoders)))
  "Returns full string definition for message of type 'encoders"
  (cl:format cl:nil "float32[] encoderTicks~%uint32 timeStamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <encoders>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'encoderTicks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <encoders>))
  "Converts a ROS message object to a list"
  (cl:list 'encoders
    (cl:cons ':encoderTicks (encoderTicks msg))
    (cl:cons ':timeStamp (timeStamp msg))
))

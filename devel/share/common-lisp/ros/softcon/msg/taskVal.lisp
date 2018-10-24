; Auto-generated. Do not edit!


(cl:in-package softcon-msg)


;//! \htmlinclude taskVal.msg.html

(cl:defclass <taskVal> (roslisp-msg-protocol:ros-message)
  ((thrust_factor
    :reader thrust_factor
    :initarg :thrust_factor
    :type cl:integer
    :initform 0)
   (yaw_setpoint
    :reader yaw_setpoint
    :initarg :yaw_setpoint
    :type cl:integer
    :initform 0)
   (depth_setpoint
    :reader depth_setpoint
    :initarg :depth_setpoint
    :type cl:integer
    :initform 0)
   (speed_change
    :reader speed_change
    :initarg :speed_change
    :type cl:integer
    :initform 0))
)

(cl:defclass taskVal (<taskVal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <taskVal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'taskVal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name softcon-msg:<taskVal> is deprecated: use softcon-msg:taskVal instead.")))

(cl:ensure-generic-function 'thrust_factor-val :lambda-list '(m))
(cl:defmethod thrust_factor-val ((m <taskVal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader softcon-msg:thrust_factor-val is deprecated.  Use softcon-msg:thrust_factor instead.")
  (thrust_factor m))

(cl:ensure-generic-function 'yaw_setpoint-val :lambda-list '(m))
(cl:defmethod yaw_setpoint-val ((m <taskVal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader softcon-msg:yaw_setpoint-val is deprecated.  Use softcon-msg:yaw_setpoint instead.")
  (yaw_setpoint m))

(cl:ensure-generic-function 'depth_setpoint-val :lambda-list '(m))
(cl:defmethod depth_setpoint-val ((m <taskVal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader softcon-msg:depth_setpoint-val is deprecated.  Use softcon-msg:depth_setpoint instead.")
  (depth_setpoint m))

(cl:ensure-generic-function 'speed_change-val :lambda-list '(m))
(cl:defmethod speed_change-val ((m <taskVal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader softcon-msg:speed_change-val is deprecated.  Use softcon-msg:speed_change instead.")
  (speed_change m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <taskVal>) ostream)
  "Serializes a message object of type '<taskVal>"
  (cl:let* ((signed (cl:slot-value msg 'thrust_factor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yaw_setpoint)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'depth_setpoint)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_change)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <taskVal>) istream)
  "Deserializes a message object of type '<taskVal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'thrust_factor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaw_setpoint) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'depth_setpoint) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_change) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<taskVal>)))
  "Returns string type for a message object of type '<taskVal>"
  "softcon/taskVal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'taskVal)))
  "Returns string type for a message object of type 'taskVal"
  "softcon/taskVal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<taskVal>)))
  "Returns md5sum for a message object of type '<taskVal>"
  "34eb4660468f98f5c19094fca75c6145")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'taskVal)))
  "Returns md5sum for a message object of type 'taskVal"
  "34eb4660468f98f5c19094fca75c6145")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<taskVal>)))
  "Returns full string definition for message of type '<taskVal>"
  (cl:format cl:nil "int32 thrust_factor~%int32 yaw_setpoint~%int32 depth_setpoint~%int32 speed_change~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'taskVal)))
  "Returns full string definition for message of type 'taskVal"
  (cl:format cl:nil "int32 thrust_factor~%int32 yaw_setpoint~%int32 depth_setpoint~%int32 speed_change~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <taskVal>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <taskVal>))
  "Converts a ROS message object to a list"
  (cl:list 'taskVal
    (cl:cons ':thrust_factor (thrust_factor msg))
    (cl:cons ':yaw_setpoint (yaw_setpoint msg))
    (cl:cons ':depth_setpoint (depth_setpoint msg))
    (cl:cons ':speed_change (speed_change msg))
))

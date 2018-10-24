; Auto-generated. Do not edit!


(cl:in-package softcon-msg)


;//! \htmlinclude taskFlag.msg.html

(cl:defclass <taskFlag> (roslisp-msg-protocol:ros-message)
  ((offset
    :reader offset
    :initarg :offset
    :type cl:fixnum
    :initform 0)
   (yaw_change
    :reader yaw_change
    :initarg :yaw_change
    :type cl:fixnum
    :initform 0)
   (depth_change
    :reader depth_change
    :initarg :depth_change
    :type cl:fixnum
    :initform 0)
   (speed_change
    :reader speed_change
    :initarg :speed_change
    :type cl:fixnum
    :initform 0))
)

(cl:defclass taskFlag (<taskFlag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <taskFlag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'taskFlag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name softcon-msg:<taskFlag> is deprecated: use softcon-msg:taskFlag instead.")))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <taskFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader softcon-msg:offset-val is deprecated.  Use softcon-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'yaw_change-val :lambda-list '(m))
(cl:defmethod yaw_change-val ((m <taskFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader softcon-msg:yaw_change-val is deprecated.  Use softcon-msg:yaw_change instead.")
  (yaw_change m))

(cl:ensure-generic-function 'depth_change-val :lambda-list '(m))
(cl:defmethod depth_change-val ((m <taskFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader softcon-msg:depth_change-val is deprecated.  Use softcon-msg:depth_change instead.")
  (depth_change m))

(cl:ensure-generic-function 'speed_change-val :lambda-list '(m))
(cl:defmethod speed_change-val ((m <taskFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader softcon-msg:speed_change-val is deprecated.  Use softcon-msg:speed_change instead.")
  (speed_change m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <taskFlag>) ostream)
  "Serializes a message object of type '<taskFlag>"
  (cl:let* ((signed (cl:slot-value msg 'offset)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yaw_change)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'depth_change)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_change)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <taskFlag>) istream)
  "Deserializes a message object of type '<taskFlag>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'offset) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaw_change) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'depth_change) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_change) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<taskFlag>)))
  "Returns string type for a message object of type '<taskFlag>"
  "softcon/taskFlag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'taskFlag)))
  "Returns string type for a message object of type 'taskFlag"
  "softcon/taskFlag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<taskFlag>)))
  "Returns md5sum for a message object of type '<taskFlag>"
  "c2109de6632485726fc1bd87c14c6022")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'taskFlag)))
  "Returns md5sum for a message object of type 'taskFlag"
  "c2109de6632485726fc1bd87c14c6022")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<taskFlag>)))
  "Returns full string definition for message of type '<taskFlag>"
  (cl:format cl:nil "int8 offset~%int8 yaw_change~%int8 depth_change~%int8 speed_change~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'taskFlag)))
  "Returns full string definition for message of type 'taskFlag"
  (cl:format cl:nil "int8 offset~%int8 yaw_change~%int8 depth_change~%int8 speed_change~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <taskFlag>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <taskFlag>))
  "Converts a ROS message object to a list"
  (cl:list 'taskFlag
    (cl:cons ':offset (offset msg))
    (cl:cons ':yaw_change (yaw_change msg))
    (cl:cons ':depth_change (depth_change msg))
    (cl:cons ':speed_change (speed_change msg))
))

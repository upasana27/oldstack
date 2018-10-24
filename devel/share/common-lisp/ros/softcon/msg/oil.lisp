; Auto-generated. Do not edit!


(cl:in-package softcon-msg)


;//! \htmlinclude oil.msg.html

(cl:defclass <oil> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (depth
    :reader depth
    :initarg :depth
    :type cl:float
    :initform 0.0)
   (xcor
    :reader xcor
    :initarg :xcor
    :type cl:float
    :initform 0.0))
)

(cl:defclass oil (<oil>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <oil>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'oil)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name softcon-msg:<oil> is deprecated: use softcon-msg:oil instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <oil>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader softcon-msg:speed-val is deprecated.  Use softcon-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <oil>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader softcon-msg:depth-val is deprecated.  Use softcon-msg:depth instead.")
  (depth m))

(cl:ensure-generic-function 'xcor-val :lambda-list '(m))
(cl:defmethod xcor-val ((m <oil>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader softcon-msg:xcor-val is deprecated.  Use softcon-msg:xcor instead.")
  (xcor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <oil>) ostream)
  "Serializes a message object of type '<oil>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xcor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <oil>) istream)
  "Deserializes a message object of type '<oil>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'depth) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xcor) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<oil>)))
  "Returns string type for a message object of type '<oil>"
  "softcon/oil")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'oil)))
  "Returns string type for a message object of type 'oil"
  "softcon/oil")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<oil>)))
  "Returns md5sum for a message object of type '<oil>"
  "8332a188e73baeefa89bb486ea01ecd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'oil)))
  "Returns md5sum for a message object of type 'oil"
  "8332a188e73baeefa89bb486ea01ecd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<oil>)))
  "Returns full string definition for message of type '<oil>"
  (cl:format cl:nil "float64 speed~%float64 depth~%float64 xcor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'oil)))
  "Returns full string definition for message of type 'oil"
  (cl:format cl:nil "float64 speed~%float64 depth~%float64 xcor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <oil>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <oil>))
  "Converts a ROS message object to a list"
  (cl:list 'oil
    (cl:cons ':speed (speed msg))
    (cl:cons ':depth (depth msg))
    (cl:cons ':xcor (xcor msg))
))

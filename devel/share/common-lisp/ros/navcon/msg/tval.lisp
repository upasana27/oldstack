; Auto-generated. Do not edit!


(cl:in-package navcon-msg)


;//! \htmlinclude tval.msg.html

(cl:defclass <tval> (roslisp-msg-protocol:ros-message)
  ((depthright
    :reader depthright
    :initarg :depthright
    :type cl:fixnum
    :initform 0)
   (depthleft
    :reader depthleft
    :initarg :depthleft
    :type cl:fixnum
    :initform 0)
   (offyawfront
    :reader offyawfront
    :initarg :offyawfront
    :type cl:fixnum
    :initform 0)
   (offyawback
    :reader offyawback
    :initarg :offyawback
    :type cl:fixnum
    :initform 0)
   (speedleft
    :reader speedleft
    :initarg :speedleft
    :type cl:fixnum
    :initform 0)
   (speedright
    :reader speedright
    :initarg :speedright
    :type cl:fixnum
    :initform 0))
)

(cl:defclass tval (<tval>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tval>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tval)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navcon-msg:<tval> is deprecated: use navcon-msg:tval instead.")))

(cl:ensure-generic-function 'depthright-val :lambda-list '(m))
(cl:defmethod depthright-val ((m <tval>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navcon-msg:depthright-val is deprecated.  Use navcon-msg:depthright instead.")
  (depthright m))

(cl:ensure-generic-function 'depthleft-val :lambda-list '(m))
(cl:defmethod depthleft-val ((m <tval>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navcon-msg:depthleft-val is deprecated.  Use navcon-msg:depthleft instead.")
  (depthleft m))

(cl:ensure-generic-function 'offyawfront-val :lambda-list '(m))
(cl:defmethod offyawfront-val ((m <tval>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navcon-msg:offyawfront-val is deprecated.  Use navcon-msg:offyawfront instead.")
  (offyawfront m))

(cl:ensure-generic-function 'offyawback-val :lambda-list '(m))
(cl:defmethod offyawback-val ((m <tval>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navcon-msg:offyawback-val is deprecated.  Use navcon-msg:offyawback instead.")
  (offyawback m))

(cl:ensure-generic-function 'speedleft-val :lambda-list '(m))
(cl:defmethod speedleft-val ((m <tval>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navcon-msg:speedleft-val is deprecated.  Use navcon-msg:speedleft instead.")
  (speedleft m))

(cl:ensure-generic-function 'speedright-val :lambda-list '(m))
(cl:defmethod speedright-val ((m <tval>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navcon-msg:speedright-val is deprecated.  Use navcon-msg:speedright instead.")
  (speedright m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tval>) ostream)
  "Serializes a message object of type '<tval>"
  (cl:let* ((signed (cl:slot-value msg 'depthright)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'depthleft)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'offyawfront)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'offyawback)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speedleft)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speedright)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tval>) istream)
  "Deserializes a message object of type '<tval>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'depthright) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'depthleft) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'offyawfront) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'offyawback) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speedleft) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speedright) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tval>)))
  "Returns string type for a message object of type '<tval>"
  "navcon/tval")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tval)))
  "Returns string type for a message object of type 'tval"
  "navcon/tval")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tval>)))
  "Returns md5sum for a message object of type '<tval>"
  "dda295200907eed02efd0f3614e26ed4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tval)))
  "Returns md5sum for a message object of type 'tval"
  "dda295200907eed02efd0f3614e26ed4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tval>)))
  "Returns full string definition for message of type '<tval>"
  (cl:format cl:nil "int16 depthright~%int16 depthleft~%int16 offyawfront~%int16 offyawback~%int16 speedleft~%int16 speedright~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tval)))
  "Returns full string definition for message of type 'tval"
  (cl:format cl:nil "int16 depthright~%int16 depthleft~%int16 offyawfront~%int16 offyawback~%int16 speedleft~%int16 speedright~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tval>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tval>))
  "Converts a ROS message object to a list"
  (cl:list 'tval
    (cl:cons ':depthright (depthright msg))
    (cl:cons ':depthleft (depthleft msg))
    (cl:cons ':offyawfront (offyawfront msg))
    (cl:cons ':offyawback (offyawback msg))
    (cl:cons ':speedleft (speedleft msg))
    (cl:cons ':speedright (speedright msg))
))

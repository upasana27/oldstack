; Auto-generated. Do not edit!


(cl:in-package concon-msg)


;//! \htmlinclude tval.msg.html

(cl:defclass <tval> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass tval (<tval>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tval>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tval)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concon-msg:<tval> is deprecated: use concon-msg:tval instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tval>) ostream)
  "Serializes a message object of type '<tval>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tval>) istream)
  "Deserializes a message object of type '<tval>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tval>)))
  "Returns string type for a message object of type '<tval>"
  "concon/tval")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tval)))
  "Returns string type for a message object of type 'tval"
  "concon/tval")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tval>)))
  "Returns md5sum for a message object of type '<tval>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tval)))
  "Returns md5sum for a message object of type 'tval"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tval>)))
  "Returns full string definition for message of type '<tval>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tval)))
  "Returns full string definition for message of type 'tval"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tval>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tval>))
  "Converts a ROS message object to a list"
  (cl:list 'tval
))

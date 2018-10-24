;; Auto-generated. Do not edit!


(when (boundp 'keycon::tval)
  (if (not (find-package "KEYCON"))
    (make-package "KEYCON"))
  (shadow 'tval (find-package "KEYCON")))
(unless (find-package "KEYCON::TVAL")
  (make-package "KEYCON::TVAL"))

(in-package "ROS")
;;//! \htmlinclude tval.msg.html


(defclass keycon::tval
  :super ros::object
  :slots ())

(defmethod keycon::tval
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get keycon::tval :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get keycon::tval :datatype-) "keycon/tval")
(setf (get keycon::tval :definition-)
      "
")



(provide :keycon/tval "d41d8cd98f00b204e9800998ecf8427e")



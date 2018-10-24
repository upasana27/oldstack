;; Auto-generated. Do not edit!


(when (boundp 'concon::tval)
  (if (not (find-package "CONCON"))
    (make-package "CONCON"))
  (shadow 'tval (find-package "CONCON")))
(unless (find-package "CONCON::TVAL")
  (make-package "CONCON::TVAL"))

(in-package "ROS")
;;//! \htmlinclude tval.msg.html


(defclass concon::tval
  :super ros::object
  :slots ())

(defmethod concon::tval
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

(setf (get concon::tval :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get concon::tval :datatype-) "concon/tval")
(setf (get concon::tval :definition-)
      "
")



(provide :concon/tval "d41d8cd98f00b204e9800998ecf8427e")



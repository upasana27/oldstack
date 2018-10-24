;; Auto-generated. Do not edit!


(when (boundp 'softcon::oil)
  (if (not (find-package "SOFTCON"))
    (make-package "SOFTCON"))
  (shadow 'oil (find-package "SOFTCON")))
(unless (find-package "SOFTCON::OIL")
  (make-package "SOFTCON::OIL"))

(in-package "ROS")
;;//! \htmlinclude oil.msg.html


(defclass softcon::oil
  :super ros::object
  :slots (_speed _depth _xcor ))

(defmethod softcon::oil
  (:init
   (&key
    ((:speed __speed) 0.0)
    ((:depth __depth) 0.0)
    ((:xcor __xcor) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   (setq _depth (float __depth))
   (setq _xcor (float __xcor))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:xcor
   (&optional __xcor)
   (if __xcor (setq _xcor __xcor)) _xcor)
  (:serialization-length
   ()
   (+
    ;; float64 _speed
    8
    ;; float64 _depth
    8
    ;; float64 _xcor
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth
       (sys::poke _depth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xcor
       (sys::poke _xcor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth
     (setq _depth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xcor
     (setq _xcor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get softcon::oil :md5sum-) "8332a188e73baeefa89bb486ea01ecd3")
(setf (get softcon::oil :datatype-) "softcon/oil")
(setf (get softcon::oil :definition-)
      "float64 speed
float64 depth
float64 xcor

")



(provide :softcon/oil "8332a188e73baeefa89bb486ea01ecd3")



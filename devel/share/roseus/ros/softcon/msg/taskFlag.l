;; Auto-generated. Do not edit!


(when (boundp 'softcon::taskFlag)
  (if (not (find-package "SOFTCON"))
    (make-package "SOFTCON"))
  (shadow 'taskFlag (find-package "SOFTCON")))
(unless (find-package "SOFTCON::TASKFLAG")
  (make-package "SOFTCON::TASKFLAG"))

(in-package "ROS")
;;//! \htmlinclude taskFlag.msg.html


(defclass softcon::taskFlag
  :super ros::object
  :slots (_offset _yaw_change _depth_change _speed_change ))

(defmethod softcon::taskFlag
  (:init
   (&key
    ((:offset __offset) 0)
    ((:yaw_change __yaw_change) 0)
    ((:depth_change __depth_change) 0)
    ((:speed_change __speed_change) 0)
    )
   (send-super :init)
   (setq _offset (round __offset))
   (setq _yaw_change (round __yaw_change))
   (setq _depth_change (round __depth_change))
   (setq _speed_change (round __speed_change))
   self)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:yaw_change
   (&optional __yaw_change)
   (if __yaw_change (setq _yaw_change __yaw_change)) _yaw_change)
  (:depth_change
   (&optional __depth_change)
   (if __depth_change (setq _depth_change __depth_change)) _depth_change)
  (:speed_change
   (&optional __speed_change)
   (if __speed_change (setq _speed_change __speed_change)) _speed_change)
  (:serialization-length
   ()
   (+
    ;; int8 _offset
    1
    ;; int8 _yaw_change
    1
    ;; int8 _depth_change
    1
    ;; int8 _speed_change
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _offset
       (write-byte _offset s)
     ;; int8 _yaw_change
       (write-byte _yaw_change s)
     ;; int8 _depth_change
       (write-byte _depth_change s)
     ;; int8 _speed_change
       (write-byte _speed_change s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _offset
     (setq _offset (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _offset 127) (setq _offset (- _offset 256)))
   ;; int8 _yaw_change
     (setq _yaw_change (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _yaw_change 127) (setq _yaw_change (- _yaw_change 256)))
   ;; int8 _depth_change
     (setq _depth_change (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _depth_change 127) (setq _depth_change (- _depth_change 256)))
   ;; int8 _speed_change
     (setq _speed_change (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _speed_change 127) (setq _speed_change (- _speed_change 256)))
   ;;
   self)
  )

(setf (get softcon::taskFlag :md5sum-) "c2109de6632485726fc1bd87c14c6022")
(setf (get softcon::taskFlag :datatype-) "softcon/taskFlag")
(setf (get softcon::taskFlag :definition-)
      "int8 offset
int8 yaw_change
int8 depth_change
int8 speed_change
")



(provide :softcon/taskFlag "c2109de6632485726fc1bd87c14c6022")



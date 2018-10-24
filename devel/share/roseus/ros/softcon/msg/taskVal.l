;; Auto-generated. Do not edit!


(when (boundp 'softcon::taskVal)
  (if (not (find-package "SOFTCON"))
    (make-package "SOFTCON"))
  (shadow 'taskVal (find-package "SOFTCON")))
(unless (find-package "SOFTCON::TASKVAL")
  (make-package "SOFTCON::TASKVAL"))

(in-package "ROS")
;;//! \htmlinclude taskVal.msg.html


(defclass softcon::taskVal
  :super ros::object
  :slots (_thrust_factor _yaw_setpoint _depth_setpoint _speed_change ))

(defmethod softcon::taskVal
  (:init
   (&key
    ((:thrust_factor __thrust_factor) 0)
    ((:yaw_setpoint __yaw_setpoint) 0)
    ((:depth_setpoint __depth_setpoint) 0)
    ((:speed_change __speed_change) 0)
    )
   (send-super :init)
   (setq _thrust_factor (round __thrust_factor))
   (setq _yaw_setpoint (round __yaw_setpoint))
   (setq _depth_setpoint (round __depth_setpoint))
   (setq _speed_change (round __speed_change))
   self)
  (:thrust_factor
   (&optional __thrust_factor)
   (if __thrust_factor (setq _thrust_factor __thrust_factor)) _thrust_factor)
  (:yaw_setpoint
   (&optional __yaw_setpoint)
   (if __yaw_setpoint (setq _yaw_setpoint __yaw_setpoint)) _yaw_setpoint)
  (:depth_setpoint
   (&optional __depth_setpoint)
   (if __depth_setpoint (setq _depth_setpoint __depth_setpoint)) _depth_setpoint)
  (:speed_change
   (&optional __speed_change)
   (if __speed_change (setq _speed_change __speed_change)) _speed_change)
  (:serialization-length
   ()
   (+
    ;; int32 _thrust_factor
    4
    ;; int32 _yaw_setpoint
    4
    ;; int32 _depth_setpoint
    4
    ;; int32 _speed_change
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _thrust_factor
       (write-long _thrust_factor s)
     ;; int32 _yaw_setpoint
       (write-long _yaw_setpoint s)
     ;; int32 _depth_setpoint
       (write-long _depth_setpoint s)
     ;; int32 _speed_change
       (write-long _speed_change s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _thrust_factor
     (setq _thrust_factor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _yaw_setpoint
     (setq _yaw_setpoint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _depth_setpoint
     (setq _depth_setpoint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed_change
     (setq _speed_change (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get softcon::taskVal :md5sum-) "34eb4660468f98f5c19094fca75c6145")
(setf (get softcon::taskVal :datatype-) "softcon/taskVal")
(setf (get softcon::taskVal :definition-)
      "int32 thrust_factor
int32 yaw_setpoint
int32 depth_setpoint
int32 speed_change
")



(provide :softcon/taskVal "34eb4660468f98f5c19094fca75c6145")



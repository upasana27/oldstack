;; Auto-generated. Do not edit!


(when (boundp 'navcon::tval)
  (if (not (find-package "NAVCON"))
    (make-package "NAVCON"))
  (shadow 'tval (find-package "NAVCON")))
(unless (find-package "NAVCON::TVAL")
  (make-package "NAVCON::TVAL"))

(in-package "ROS")
;;//! \htmlinclude tval.msg.html


(defclass navcon::tval
  :super ros::object
  :slots (_depthright _depthleft _offyawfront _offyawback _speedleft _speedright ))

(defmethod navcon::tval
  (:init
   (&key
    ((:depthright __depthright) 0)
    ((:depthleft __depthleft) 0)
    ((:offyawfront __offyawfront) 0)
    ((:offyawback __offyawback) 0)
    ((:speedleft __speedleft) 0)
    ((:speedright __speedright) 0)
    )
   (send-super :init)
   (setq _depthright (round __depthright))
   (setq _depthleft (round __depthleft))
   (setq _offyawfront (round __offyawfront))
   (setq _offyawback (round __offyawback))
   (setq _speedleft (round __speedleft))
   (setq _speedright (round __speedright))
   self)
  (:depthright
   (&optional __depthright)
   (if __depthright (setq _depthright __depthright)) _depthright)
  (:depthleft
   (&optional __depthleft)
   (if __depthleft (setq _depthleft __depthleft)) _depthleft)
  (:offyawfront
   (&optional __offyawfront)
   (if __offyawfront (setq _offyawfront __offyawfront)) _offyawfront)
  (:offyawback
   (&optional __offyawback)
   (if __offyawback (setq _offyawback __offyawback)) _offyawback)
  (:speedleft
   (&optional __speedleft)
   (if __speedleft (setq _speedleft __speedleft)) _speedleft)
  (:speedright
   (&optional __speedright)
   (if __speedright (setq _speedright __speedright)) _speedright)
  (:serialization-length
   ()
   (+
    ;; int16 _depthright
    2
    ;; int16 _depthleft
    2
    ;; int16 _offyawfront
    2
    ;; int16 _offyawback
    2
    ;; int16 _speedleft
    2
    ;; int16 _speedright
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _depthright
       (write-word _depthright s)
     ;; int16 _depthleft
       (write-word _depthleft s)
     ;; int16 _offyawfront
       (write-word _offyawfront s)
     ;; int16 _offyawback
       (write-word _offyawback s)
     ;; int16 _speedleft
       (write-word _speedleft s)
     ;; int16 _speedright
       (write-word _speedright s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _depthright
     (setq _depthright (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _depthleft
     (setq _depthleft (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _offyawfront
     (setq _offyawfront (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _offyawback
     (setq _offyawback (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _speedleft
     (setq _speedleft (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _speedright
     (setq _speedright (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get navcon::tval :md5sum-) "dda295200907eed02efd0f3614e26ed4")
(setf (get navcon::tval :datatype-) "navcon/tval")
(setf (get navcon::tval :definition-)
      "int16 depthright
int16 depthleft
int16 offyawfront
int16 offyawback
int16 speedleft
int16 speedright


")



(provide :navcon/tval "dda295200907eed02efd0f3614e26ed4")



;; Auto-generated. Do not edit!


(when (boundp 'simple_robot_gazebo::encoders)
  (if (not (find-package "SIMPLE_ROBOT_GAZEBO"))
    (make-package "SIMPLE_ROBOT_GAZEBO"))
  (shadow 'encoders (find-package "SIMPLE_ROBOT_GAZEBO")))
(unless (find-package "SIMPLE_ROBOT_GAZEBO::ENCODERS")
  (make-package "SIMPLE_ROBOT_GAZEBO::ENCODERS"))

(in-package "ROS")
;;//! \htmlinclude encoders.msg.html


(defclass simple_robot_gazebo::encoders
  :super ros::object
  :slots (_encoderTicks _timeStamp ))

(defmethod simple_robot_gazebo::encoders
  (:init
   (&key
    ((:encoderTicks __encoderTicks) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _encoderTicks __encoderTicks)
   (setq _timeStamp (round __timeStamp))
   self)
  (:encoderTicks
   (&optional __encoderTicks)
   (if __encoderTicks (setq _encoderTicks __encoderTicks)) _encoderTicks)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:serialization-length
   ()
   (+
    ;; float32[] _encoderTicks
    (* 4    (length _encoderTicks)) 4
    ;; uint32 _timeStamp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _encoderTicks
     (write-long (length _encoderTicks) s)
     (dotimes (i (length _encoderTicks))
       (sys::poke (elt _encoderTicks i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32 _timeStamp
       (write-long _timeStamp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _encoderTicks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _encoderTicks (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _encoderTicks i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get simple_robot_gazebo::encoders :md5sum-) "07aba7a5adda19d5b02a03ead81505ac")
(setf (get simple_robot_gazebo::encoders :datatype-) "simple_robot_gazebo/encoders")
(setf (get simple_robot_gazebo::encoders :definition-)
      "float32[] encoderTicks
uint32 timeStamp

")



(provide :simple_robot_gazebo/encoders "07aba7a5adda19d5b02a03ead81505ac")



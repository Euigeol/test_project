;; Auto-generated. Do not edit!


(when (boundp 'testpkg::testmsg)
  (if (not (find-package "TESTPKG"))
    (make-package "TESTPKG"))
  (shadow 'testmsg (find-package "TESTPKG")))
(unless (find-package "TESTPKG::TESTMSG")
  (make-package "TESTPKG::TESTMSG"))

(in-package "ROS")
;;//! \htmlinclude testmsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass testpkg::testmsg
  :super ros::object
  :slots (_header _x _y _testarray ))

(defmethod testpkg::testmsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x __x) 0)
    ((:y __y) 0)
    ((:testarray __testarray) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _testarray __testarray)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:testarray
   (&optional __testarray)
   (if __testarray (setq _testarray __testarray)) _testarray)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32[] _testarray
    (* 4    (length _testarray)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32[] _testarray
     (write-long (length _testarray) s)
     (dotimes (i (length _testarray))
       (write-long (elt _testarray i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _testarray
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _testarray (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _testarray i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get testpkg::testmsg :md5sum-) "50db2c2ce284ae6dd43dff7a93a952f8")
(setf (get testpkg::testmsg :datatype-) "testpkg/testmsg")
(setf (get testpkg::testmsg :definition-)
      "Header header
int32 x
int32 y
int32[] testarray

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :testpkg/testmsg "50db2c2ce284ae6dd43dff7a93a952f8")



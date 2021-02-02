;; Auto-generated. Do not edit!


(when (boundp 'testpkg::radiusArea)
  (if (not (find-package "TESTPKG"))
    (make-package "TESTPKG"))
  (shadow 'radiusArea (find-package "TESTPKG")))
(unless (find-package "TESTPKG::RADIUSAREA")
  (make-package "TESTPKG::RADIUSAREA"))

(in-package "ROS")
;;//! \htmlinclude radiusArea.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass testpkg::radiusArea
  :super ros::object
  :slots (_header _inarray _outarray ))

(defmethod testpkg::radiusArea
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:inarray __inarray) 0)
    ((:outarray __outarray) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _inarray (round __inarray))
   (setq _outarray (float __outarray))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:inarray
   (&optional __inarray)
   (if __inarray (setq _inarray __inarray)) _inarray)
  (:outarray
   (&optional __outarray)
   (if __outarray (setq _outarray __outarray)) _outarray)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _inarray
    4
    ;; float32 _outarray
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _inarray
       (write-long _inarray s)
     ;; float32 _outarray
       (sys::poke _outarray (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _inarray
     (setq _inarray (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _outarray
     (setq _outarray (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get testpkg::radiusArea :md5sum-) "63a322e2355ce289bef7e29c7fefb7e1")
(setf (get testpkg::radiusArea :datatype-) "testpkg/radiusArea")
(setf (get testpkg::radiusArea :definition-)
      "Header header
int32 inarray
float32 outarray

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



(provide :testpkg/radiusArea "63a322e2355ce289bef7e29c7fefb7e1")



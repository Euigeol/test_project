;; Auto-generated. Do not edit!


(when (boundp 'testpkg::custom_msg)
  (if (not (find-package "TESTPKG"))
    (make-package "TESTPKG"))
  (shadow 'custom_msg (find-package "TESTPKG")))
(unless (find-package "TESTPKG::CUSTOM_MSG")
  (make-package "TESTPKG::CUSTOM_MSG"))

(in-package "ROS")
;;//! \htmlinclude custom_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass testpkg::custom_msg
  :super ros::object
  :slots (_header _radius _area ))

(defmethod testpkg::custom_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radius __radius) (make-array 0 :initial-element 0 :element-type :integer))
    ((:area __area) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _radius __radius)
   (setq _area __area)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64[] _radius
    (* 8    (length _radius)) 4
    ;; float64[] _area
    (* 8    (length _area)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64[] _radius
     (write-long (length _radius) s)
     (dotimes (i (length _radius))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _radius i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _radius i)) (= (length ((elt _radius i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _radius i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _radius i) . bv) 1) -1) s))
             ((and (class (elt _radius i)) (= (length ((elt _radius i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _radius i) . bv) 0) s)
              (write-long (if (>= (elt _radius i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _radius i) s)(write-long (if (>= (elt _radius i) 0) 0 #xffffffff) s)))
       )
     ;; float64[] _area
     (write-long (length _area) s)
     (dotimes (i (length _area))
       (sys::poke (elt _area i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64[] _radius
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _radius (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _radius i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _radius i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; float64[] _area
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _area (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _area i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get testpkg::custom_msg :md5sum-) "f76aa1102a2a50e5f9adf335d9ca6f83")
(setf (get testpkg::custom_msg :datatype-) "testpkg/custom_msg")
(setf (get testpkg::custom_msg :definition-)
      "Header header

int64[] radius
float64[] area


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



(provide :testpkg/custom_msg "f76aa1102a2a50e5f9adf335d9ca6f83")



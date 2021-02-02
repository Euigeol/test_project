; Auto-generated. Do not edit!


(cl:in-package testpkg-msg)


;//! \htmlinclude radiusArea.msg.html

(cl:defclass <radiusArea> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (inarray
    :reader inarray
    :initarg :inarray
    :type cl:integer
    :initform 0)
   (outarray
    :reader outarray
    :initarg :outarray
    :type cl:float
    :initform 0.0))
)

(cl:defclass radiusArea (<radiusArea>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <radiusArea>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'radiusArea)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testpkg-msg:<radiusArea> is deprecated: use testpkg-msg:radiusArea instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <radiusArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testpkg-msg:header-val is deprecated.  Use testpkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'inarray-val :lambda-list '(m))
(cl:defmethod inarray-val ((m <radiusArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testpkg-msg:inarray-val is deprecated.  Use testpkg-msg:inarray instead.")
  (inarray m))

(cl:ensure-generic-function 'outarray-val :lambda-list '(m))
(cl:defmethod outarray-val ((m <radiusArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testpkg-msg:outarray-val is deprecated.  Use testpkg-msg:outarray instead.")
  (outarray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <radiusArea>) ostream)
  "Serializes a message object of type '<radiusArea>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'inarray)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'outarray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <radiusArea>) istream)
  "Deserializes a message object of type '<radiusArea>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'inarray) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'outarray) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<radiusArea>)))
  "Returns string type for a message object of type '<radiusArea>"
  "testpkg/radiusArea")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'radiusArea)))
  "Returns string type for a message object of type 'radiusArea"
  "testpkg/radiusArea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<radiusArea>)))
  "Returns md5sum for a message object of type '<radiusArea>"
  "63a322e2355ce289bef7e29c7fefb7e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'radiusArea)))
  "Returns md5sum for a message object of type 'radiusArea"
  "63a322e2355ce289bef7e29c7fefb7e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<radiusArea>)))
  "Returns full string definition for message of type '<radiusArea>"
  (cl:format cl:nil "Header header~%int32 inarray~%float32 outarray~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'radiusArea)))
  "Returns full string definition for message of type 'radiusArea"
  (cl:format cl:nil "Header header~%int32 inarray~%float32 outarray~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <radiusArea>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <radiusArea>))
  "Converts a ROS message object to a list"
  (cl:list 'radiusArea
    (cl:cons ':header (header msg))
    (cl:cons ':inarray (inarray msg))
    (cl:cons ':outarray (outarray msg))
))

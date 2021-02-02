; Auto-generated. Do not edit!


(cl:in-package testpkg-srv)


;//! \htmlinclude calc_area-request.msg.html

(cl:defclass <calc_area-request> (roslisp-msg-protocol:ros-message)
  ((radius_array
    :reader radius_array
    :initarg :radius_array
    :type (cl:vector cl:integer)
   :initform (cl:make-array 10 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass calc_area-request (<calc_area-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calc_area-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calc_area-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testpkg-srv:<calc_area-request> is deprecated: use testpkg-srv:calc_area-request instead.")))

(cl:ensure-generic-function 'radius_array-val :lambda-list '(m))
(cl:defmethod radius_array-val ((m <calc_area-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testpkg-srv:radius_array-val is deprecated.  Use testpkg-srv:radius_array instead.")
  (radius_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calc_area-request>) ostream)
  "Serializes a message object of type '<calc_area-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'radius_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calc_area-request>) istream)
  "Deserializes a message object of type '<calc_area-request>"
  (cl:setf (cl:slot-value msg 'radius_array) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'radius_array)))
    (cl:dotimes (i 10)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calc_area-request>)))
  "Returns string type for a service object of type '<calc_area-request>"
  "testpkg/calc_areaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calc_area-request)))
  "Returns string type for a service object of type 'calc_area-request"
  "testpkg/calc_areaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calc_area-request>)))
  "Returns md5sum for a message object of type '<calc_area-request>"
  "a72cfd8f27680b80f4ad1d29267c5ec1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calc_area-request)))
  "Returns md5sum for a message object of type 'calc_area-request"
  "a72cfd8f27680b80f4ad1d29267c5ec1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calc_area-request>)))
  "Returns full string definition for message of type '<calc_area-request>"
  (cl:format cl:nil "int64[10] radius_array~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calc_area-request)))
  "Returns full string definition for message of type 'calc_area-request"
  (cl:format cl:nil "int64[10] radius_array~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calc_area-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'radius_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calc_area-request>))
  "Converts a ROS message object to a list"
  (cl:list 'calc_area-request
    (cl:cons ':radius_array (radius_array msg))
))
;//! \htmlinclude calc_area-response.msg.html

(cl:defclass <calc_area-response> (roslisp-msg-protocol:ros-message)
  ((calc_array
    :reader calc_array
    :initarg :calc_array
    :type (cl:vector cl:float)
   :initform (cl:make-array 10 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass calc_area-response (<calc_area-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calc_area-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calc_area-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testpkg-srv:<calc_area-response> is deprecated: use testpkg-srv:calc_area-response instead.")))

(cl:ensure-generic-function 'calc_array-val :lambda-list '(m))
(cl:defmethod calc_array-val ((m <calc_area-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testpkg-srv:calc_array-val is deprecated.  Use testpkg-srv:calc_array instead.")
  (calc_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calc_area-response>) ostream)
  "Serializes a message object of type '<calc_area-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'calc_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calc_area-response>) istream)
  "Deserializes a message object of type '<calc_area-response>"
  (cl:setf (cl:slot-value msg 'calc_array) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'calc_array)))
    (cl:dotimes (i 10)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calc_area-response>)))
  "Returns string type for a service object of type '<calc_area-response>"
  "testpkg/calc_areaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calc_area-response)))
  "Returns string type for a service object of type 'calc_area-response"
  "testpkg/calc_areaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calc_area-response>)))
  "Returns md5sum for a message object of type '<calc_area-response>"
  "a72cfd8f27680b80f4ad1d29267c5ec1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calc_area-response)))
  "Returns md5sum for a message object of type 'calc_area-response"
  "a72cfd8f27680b80f4ad1d29267c5ec1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calc_area-response>)))
  "Returns full string definition for message of type '<calc_area-response>"
  (cl:format cl:nil "float64[10] calc_array~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calc_area-response)))
  "Returns full string definition for message of type 'calc_area-response"
  (cl:format cl:nil "float64[10] calc_array~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calc_area-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'calc_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calc_area-response>))
  "Converts a ROS message object to a list"
  (cl:list 'calc_area-response
    (cl:cons ':calc_array (calc_array msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'calc_area)))
  'calc_area-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'calc_area)))
  'calc_area-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calc_area)))
  "Returns string type for a service object of type '<calc_area>"
  "testpkg/calc_area")
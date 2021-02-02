;; Auto-generated. Do not edit!


(when (boundp 'testpkg::calc_area)
  (if (not (find-package "TESTPKG"))
    (make-package "TESTPKG"))
  (shadow 'calc_area (find-package "TESTPKG")))
(unless (find-package "TESTPKG::CALC_AREA")
  (make-package "TESTPKG::CALC_AREA"))
(unless (find-package "TESTPKG::CALC_AREAREQUEST")
  (make-package "TESTPKG::CALC_AREAREQUEST"))
(unless (find-package "TESTPKG::CALC_AREARESPONSE")
  (make-package "TESTPKG::CALC_AREARESPONSE"))

(in-package "ROS")





(defclass testpkg::calc_areaRequest
  :super ros::object
  :slots (_radius_array ))

(defmethod testpkg::calc_areaRequest
  (:init
   (&key
    ((:radius_array __radius_array) (make-array 10 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _radius_array __radius_array)
   self)
  (:radius_array
   (&optional __radius_array)
   (if __radius_array (setq _radius_array __radius_array)) _radius_array)
  (:serialization-length
   ()
   (+
    ;; int64[10] _radius_array
    (* 8    10)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[10] _radius_array
     (dotimes (i 10)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _radius_array i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _radius_array i)) (= (length ((elt _radius_array i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _radius_array i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _radius_array i) . bv) 1) -1) s))
             ((and (class (elt _radius_array i)) (= (length ((elt _radius_array i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _radius_array i) . bv) 0) s)
              (write-long (if (>= (elt _radius_array i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _radius_array i) s)(write-long (if (>= (elt _radius_array i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[10] _radius_array
   (dotimes (i (length _radius_array))
#+(or :alpha :irix6 :x86_64)
      (setf (elt _radius_array i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _radius_array i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;;
   self)
  )

(defclass testpkg::calc_areaResponse
  :super ros::object
  :slots (_calc_array ))

(defmethod testpkg::calc_areaResponse
  (:init
   (&key
    ((:calc_array __calc_array) (make-array 10 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _calc_array __calc_array)
   self)
  (:calc_array
   (&optional __calc_array)
   (if __calc_array (setq _calc_array __calc_array)) _calc_array)
  (:serialization-length
   ()
   (+
    ;; float64[10] _calc_array
    (* 8    10)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[10] _calc_array
     (dotimes (i 10)
       (sys::poke (elt _calc_array i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[10] _calc_array
   (dotimes (i (length _calc_array))
     (setf (elt _calc_array i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass testpkg::calc_area
  :super ros::object
  :slots ())

(setf (get testpkg::calc_area :md5sum-) "a72cfd8f27680b80f4ad1d29267c5ec1")
(setf (get testpkg::calc_area :datatype-) "testpkg/calc_area")
(setf (get testpkg::calc_area :request) testpkg::calc_areaRequest)
(setf (get testpkg::calc_area :response) testpkg::calc_areaResponse)

(defmethod testpkg::calc_areaRequest
  (:response () (instance testpkg::calc_areaResponse :init)))

(setf (get testpkg::calc_areaRequest :md5sum-) "a72cfd8f27680b80f4ad1d29267c5ec1")
(setf (get testpkg::calc_areaRequest :datatype-) "testpkg/calc_areaRequest")
(setf (get testpkg::calc_areaRequest :definition-)
      "int64[10] radius_array
---
float64[10] calc_array


")

(setf (get testpkg::calc_areaResponse :md5sum-) "a72cfd8f27680b80f4ad1d29267c5ec1")
(setf (get testpkg::calc_areaResponse :datatype-) "testpkg/calc_areaResponse")
(setf (get testpkg::calc_areaResponse :definition-)
      "int64[10] radius_array
---
float64[10] calc_array


")



(provide :testpkg/calc_area "a72cfd8f27680b80f4ad1d29267c5ec1")



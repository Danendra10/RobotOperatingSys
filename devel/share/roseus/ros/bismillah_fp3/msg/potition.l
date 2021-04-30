;; Auto-generated. Do not edit!


(when (boundp 'bismillah_fp3::potition)
  (if (not (find-package "BISMILLAH_FP3"))
    (make-package "BISMILLAH_FP3"))
  (shadow 'potition (find-package "BISMILLAH_FP3")))
(unless (find-package "BISMILLAH_FP3::POTITION")
  (make-package "BISMILLAH_FP3::POTITION"))

(in-package "ROS")
;;//! \htmlinclude potition.msg.html


(defclass bismillah_fp3::potition
  :super ros::object
  :slots (_ballx _bally _sudut _vx _vy _vtheta ))

(defmethod bismillah_fp3::potition
  (:init
   (&key
    ((:ballx __ballx) 0)
    ((:bally __bally) 0)
    ((:sudut __sudut) 0)
    ((:vx __vx) 0)
    ((:vy __vy) 0)
    ((:vtheta __vtheta) 0)
    )
   (send-super :init)
   (setq _ballx (round __ballx))
   (setq _bally (round __bally))
   (setq _sudut (round __sudut))
   (setq _vx (round __vx))
   (setq _vy (round __vy))
   (setq _vtheta (round __vtheta))
   self)
  (:ballx
   (&optional __ballx)
   (if __ballx (setq _ballx __ballx)) _ballx)
  (:bally
   (&optional __bally)
   (if __bally (setq _bally __bally)) _bally)
  (:sudut
   (&optional __sudut)
   (if __sudut (setq _sudut __sudut)) _sudut)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vtheta
   (&optional __vtheta)
   (if __vtheta (setq _vtheta __vtheta)) _vtheta)
  (:serialization-length
   ()
   (+
    ;; int64 _ballx
    8
    ;; int64 _bally
    8
    ;; int64 _sudut
    8
    ;; int64 _vx
    8
    ;; int64 _vy
    8
    ;; int64 _vtheta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _ballx
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ballx (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ballx) (= (length (_ballx . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ballx . bv) 0) 0) s)
              (write-long (ash (elt (_ballx . bv) 1) -1) s))
             ((and (class _ballx) (= (length (_ballx . bv)) 1)) ;; big1
              (write-long (elt (_ballx . bv) 0) s)
              (write-long (if (>= _ballx 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ballx s)(write-long (if (>= _ballx 0) 0 #xffffffff) s)))
     ;; int64 _bally
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _bally (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _bally) (= (length (_bally . bv)) 2)) ;; bignum
              (write-long (ash (elt (_bally . bv) 0) 0) s)
              (write-long (ash (elt (_bally . bv) 1) -1) s))
             ((and (class _bally) (= (length (_bally . bv)) 1)) ;; big1
              (write-long (elt (_bally . bv) 0) s)
              (write-long (if (>= _bally 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _bally s)(write-long (if (>= _bally 0) 0 #xffffffff) s)))
     ;; int64 _sudut
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sudut (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sudut) (= (length (_sudut . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sudut . bv) 0) 0) s)
              (write-long (ash (elt (_sudut . bv) 1) -1) s))
             ((and (class _sudut) (= (length (_sudut . bv)) 1)) ;; big1
              (write-long (elt (_sudut . bv) 0) s)
              (write-long (if (>= _sudut 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sudut s)(write-long (if (>= _sudut 0) 0 #xffffffff) s)))
     ;; int64 _vx
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _vx (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _vx) (= (length (_vx . bv)) 2)) ;; bignum
              (write-long (ash (elt (_vx . bv) 0) 0) s)
              (write-long (ash (elt (_vx . bv) 1) -1) s))
             ((and (class _vx) (= (length (_vx . bv)) 1)) ;; big1
              (write-long (elt (_vx . bv) 0) s)
              (write-long (if (>= _vx 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _vx s)(write-long (if (>= _vx 0) 0 #xffffffff) s)))
     ;; int64 _vy
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _vy (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _vy) (= (length (_vy . bv)) 2)) ;; bignum
              (write-long (ash (elt (_vy . bv) 0) 0) s)
              (write-long (ash (elt (_vy . bv) 1) -1) s))
             ((and (class _vy) (= (length (_vy . bv)) 1)) ;; big1
              (write-long (elt (_vy . bv) 0) s)
              (write-long (if (>= _vy 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _vy s)(write-long (if (>= _vy 0) 0 #xffffffff) s)))
     ;; int64 _vtheta
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _vtheta (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _vtheta) (= (length (_vtheta . bv)) 2)) ;; bignum
              (write-long (ash (elt (_vtheta . bv) 0) 0) s)
              (write-long (ash (elt (_vtheta . bv) 1) -1) s))
             ((and (class _vtheta) (= (length (_vtheta . bv)) 1)) ;; big1
              (write-long (elt (_vtheta . bv) 0) s)
              (write-long (if (>= _vtheta 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _vtheta s)(write-long (if (>= _vtheta 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _ballx
#+(or :alpha :irix6 :x86_64)
      (setf _ballx (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ballx (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _bally
#+(or :alpha :irix6 :x86_64)
      (setf _bally (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _bally (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _sudut
#+(or :alpha :irix6 :x86_64)
      (setf _sudut (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sudut (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _vx
#+(or :alpha :irix6 :x86_64)
      (setf _vx (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _vx (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _vy
#+(or :alpha :irix6 :x86_64)
      (setf _vy (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _vy (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _vtheta
#+(or :alpha :irix6 :x86_64)
      (setf _vtheta (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _vtheta (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get bismillah_fp3::potition :md5sum-) "db8c61c51d29c39ebff20f8165e09305")
(setf (get bismillah_fp3::potition :datatype-) "bismillah_fp3/potition")
(setf (get bismillah_fp3::potition :definition-)
      "int64 ballx
int64 bally
int64 sudut
int64 vx
int64 vy
int64 vtheta
")



(provide :bismillah_fp3/potition "db8c61c51d29c39ebff20f8165e09305")



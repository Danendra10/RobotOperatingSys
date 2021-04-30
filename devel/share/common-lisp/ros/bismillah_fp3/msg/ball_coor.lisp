; Auto-generated. Do not edit!


(cl:in-package bismillah_fp3-msg)


;//! \htmlinclude ball_coor.msg.html

(cl:defclass <ball_coor> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass ball_coor (<ball_coor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ball_coor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ball_coor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bismillah_fp3-msg:<ball_coor> is deprecated: use bismillah_fp3-msg:ball_coor instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ball_coor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bismillah_fp3-msg:x-val is deprecated.  Use bismillah_fp3-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <ball_coor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bismillah_fp3-msg:y-val is deprecated.  Use bismillah_fp3-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ball_coor>) ostream)
  "Serializes a message object of type '<ball_coor>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ball_coor>) istream)
  "Deserializes a message object of type '<ball_coor>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ball_coor>)))
  "Returns string type for a message object of type '<ball_coor>"
  "bismillah_fp3/ball_coor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ball_coor)))
  "Returns string type for a message object of type 'ball_coor"
  "bismillah_fp3/ball_coor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ball_coor>)))
  "Returns md5sum for a message object of type '<ball_coor>"
  "3b834ede922a0fff22c43585c533b49f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ball_coor)))
  "Returns md5sum for a message object of type 'ball_coor"
  "3b834ede922a0fff22c43585c533b49f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ball_coor>)))
  "Returns full string definition for message of type '<ball_coor>"
  (cl:format cl:nil "int64 x~%int64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ball_coor)))
  "Returns full string definition for message of type 'ball_coor"
  (cl:format cl:nil "int64 x~%int64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ball_coor>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ball_coor>))
  "Converts a ROS message object to a list"
  (cl:list 'ball_coor
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))

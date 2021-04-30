
(cl:in-package :asdf)

(defsystem "bismillah_fp3-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ball_coor" :depends-on ("_package_ball_coor"))
    (:file "_package_ball_coor" :depends-on ("_package"))
    (:file "potition" :depends-on ("_package_potition"))
    (:file "_package_potition" :depends-on ("_package"))
  ))
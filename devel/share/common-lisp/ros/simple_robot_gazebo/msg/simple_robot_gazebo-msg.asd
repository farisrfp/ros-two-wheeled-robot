
(cl:in-package :asdf)

(defsystem "simple_robot_gazebo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "encoders" :depends-on ("_package_encoders"))
    (:file "_package_encoders" :depends-on ("_package"))
  ))
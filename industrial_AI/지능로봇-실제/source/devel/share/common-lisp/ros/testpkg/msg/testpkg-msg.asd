
(cl:in-package :asdf)

(defsystem "testpkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "custom_msg" :depends-on ("_package_custom_msg"))
    (:file "_package_custom_msg" :depends-on ("_package"))
    (:file "radiusArea" :depends-on ("_package_radiusArea"))
    (:file "_package_radiusArea" :depends-on ("_package"))
    (:file "testmsg" :depends-on ("_package_testmsg"))
    (:file "_package_testmsg" :depends-on ("_package"))
  ))
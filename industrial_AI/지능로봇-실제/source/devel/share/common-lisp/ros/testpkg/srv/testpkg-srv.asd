
(cl:in-package :asdf)

(defsystem "testpkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "calc_area" :depends-on ("_package_calc_area"))
    (:file "_package_calc_area" :depends-on ("_package"))
    (:file "testsrv" :depends-on ("_package_testsrv"))
    (:file "_package_testsrv" :depends-on ("_package"))
  ))
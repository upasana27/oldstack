
(cl:in-package :asdf)

(defsystem "navcon-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "tval" :depends-on ("_package_tval"))
    (:file "_package_tval" :depends-on ("_package"))
  ))
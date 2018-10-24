
(cl:in-package :asdf)

(defsystem "softcon-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "fire" :depends-on ("_package_fire"))
    (:file "_package_fire" :depends-on ("_package"))
    (:file "oil" :depends-on ("_package_oil"))
    (:file "_package_oil" :depends-on ("_package"))
    (:file "taskFlag" :depends-on ("_package_taskFlag"))
    (:file "_package_taskFlag" :depends-on ("_package"))
    (:file "taskVal" :depends-on ("_package_taskVal"))
    (:file "_package_taskVal" :depends-on ("_package"))
  ))
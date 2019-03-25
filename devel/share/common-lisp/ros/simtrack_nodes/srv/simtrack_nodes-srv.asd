
(cl:in-package :asdf)

(defsystem "simtrack_nodes-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SwitchCamera" :depends-on ("_package_SwitchCamera"))
    (:file "_package_SwitchCamera" :depends-on ("_package"))
    (:file "SwitchObjects" :depends-on ("_package_SwitchObjects"))
    (:file "_package_SwitchObjects" :depends-on ("_package"))
  ))
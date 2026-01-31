
(cl:in-package :asdf)

(defsystem "ainex_interfaces-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :ainex_interfaces-msg
               :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "GetWalkingParam" :depends-on ("_package_GetWalkingParam"))
    (:file "_package_GetWalkingParam" :depends-on ("_package"))
    (:file "GetWalkingState" :depends-on ("_package_GetWalkingState"))
    (:file "_package_GetWalkingState" :depends-on ("_package"))
    (:file "SetFloat" :depends-on ("_package_SetFloat"))
    (:file "_package_SetFloat" :depends-on ("_package"))
    (:file "SetPoint" :depends-on ("_package_SetPoint"))
    (:file "_package_SetPoint" :depends-on ("_package"))
    (:file "SetRGB" :depends-on ("_package_SetRGB"))
    (:file "_package_SetRGB" :depends-on ("_package"))
    (:file "SetString" :depends-on ("_package_SetString"))
    (:file "_package_SetString" :depends-on ("_package"))
    (:file "SetWalkingCommand" :depends-on ("_package_SetWalkingCommand"))
    (:file "_package_SetWalkingCommand" :depends-on ("_package"))
    (:file "SetWalkingParam" :depends-on ("_package_SetWalkingParam"))
    (:file "_package_SetWalkingParam" :depends-on ("_package"))
  ))
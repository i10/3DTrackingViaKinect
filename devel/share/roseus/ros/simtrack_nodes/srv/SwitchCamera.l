;; Auto-generated. Do not edit!


(when (boundp 'simtrack_nodes::SwitchCamera)
  (if (not (find-package "SIMTRACK_NODES"))
    (make-package "SIMTRACK_NODES"))
  (shadow 'SwitchCamera (find-package "SIMTRACK_NODES")))
(unless (find-package "SIMTRACK_NODES::SWITCHCAMERA")
  (make-package "SIMTRACK_NODES::SWITCHCAMERA"))
(unless (find-package "SIMTRACK_NODES::SWITCHCAMERAREQUEST")
  (make-package "SIMTRACK_NODES::SWITCHCAMERAREQUEST"))
(unless (find-package "SIMTRACK_NODES::SWITCHCAMERARESPONSE")
  (make-package "SIMTRACK_NODES::SWITCHCAMERARESPONSE"))

(in-package "ROS")





(defclass simtrack_nodes::SwitchCameraRequest
  :super ros::object
  :slots (_camera ))

(defmethod simtrack_nodes::SwitchCameraRequest
  (:init
   (&key
    ((:camera __camera) 0)
    )
   (send-super :init)
   (setq _camera (round __camera))
   self)
  (:camera
   (&optional __camera)
   (if __camera (setq _camera __camera)) _camera)
  (:serialization-length
   ()
   (+
    ;; uint32 _camera
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _camera
       (write-long _camera s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _camera
     (setq _camera (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass simtrack_nodes::SwitchCameraResponse
  :super ros::object
  :slots (_return_code ))

(defmethod simtrack_nodes::SwitchCameraResponse
  (:init
   (&key
    ((:return_code __return_code) 0)
    )
   (send-super :init)
   (setq _return_code (round __return_code))
   self)
  (:return_code
   (&optional __return_code)
   (if __return_code (setq _return_code __return_code)) _return_code)
  (:serialization-length
   ()
   (+
    ;; int32 _return_code
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _return_code
       (write-long _return_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _return_code
     (setq _return_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass simtrack_nodes::SwitchCamera
  :super ros::object
  :slots ())

(setf (get simtrack_nodes::SwitchCamera :md5sum-) "c5b9a373078bd18eb6a83f9039d973d8")
(setf (get simtrack_nodes::SwitchCamera :datatype-) "simtrack_nodes/SwitchCamera")
(setf (get simtrack_nodes::SwitchCamera :request) simtrack_nodes::SwitchCameraRequest)
(setf (get simtrack_nodes::SwitchCamera :response) simtrack_nodes::SwitchCameraResponse)

(defmethod simtrack_nodes::SwitchCameraRequest
  (:response () (instance simtrack_nodes::SwitchCameraResponse :init)))

(setf (get simtrack_nodes::SwitchCameraRequest :md5sum-) "c5b9a373078bd18eb6a83f9039d973d8")
(setf (get simtrack_nodes::SwitchCameraRequest :datatype-) "simtrack_nodes/SwitchCameraRequest")
(setf (get simtrack_nodes::SwitchCameraRequest :definition-)
      "uint32 camera
---
int32 return_code

")

(setf (get simtrack_nodes::SwitchCameraResponse :md5sum-) "c5b9a373078bd18eb6a83f9039d973d8")
(setf (get simtrack_nodes::SwitchCameraResponse :datatype-) "simtrack_nodes/SwitchCameraResponse")
(setf (get simtrack_nodes::SwitchCameraResponse :definition-)
      "uint32 camera
---
int32 return_code

")



(provide :simtrack_nodes/SwitchCamera "c5b9a373078bd18eb6a83f9039d973d8")



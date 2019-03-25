;; Auto-generated. Do not edit!


(when (boundp 'simtrack_nodes::SwitchObjects)
  (if (not (find-package "SIMTRACK_NODES"))
    (make-package "SIMTRACK_NODES"))
  (shadow 'SwitchObjects (find-package "SIMTRACK_NODES")))
(unless (find-package "SIMTRACK_NODES::SWITCHOBJECTS")
  (make-package "SIMTRACK_NODES::SWITCHOBJECTS"))
(unless (find-package "SIMTRACK_NODES::SWITCHOBJECTSREQUEST")
  (make-package "SIMTRACK_NODES::SWITCHOBJECTSREQUEST"))
(unless (find-package "SIMTRACK_NODES::SWITCHOBJECTSRESPONSE")
  (make-package "SIMTRACK_NODES::SWITCHOBJECTSRESPONSE"))

(in-package "ROS")





(defclass simtrack_nodes::SwitchObjectsRequest
  :super ros::object
  :slots (_model_names ))

(defmethod simtrack_nodes::SwitchObjectsRequest
  (:init
   (&key
    ((:model_names __model_names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _model_names __model_names)
   self)
  (:model_names
   (&optional __model_names)
   (if __model_names (setq _model_names __model_names)) _model_names)
  (:serialization-length
   ()
   (+
    ;; string[] _model_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _model_names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _model_names
     (write-long (length _model_names) s)
     (dolist (elem _model_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _model_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _model_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _model_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass simtrack_nodes::SwitchObjectsResponse
  :super ros::object
  :slots (_return_code ))

(defmethod simtrack_nodes::SwitchObjectsResponse
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

(defclass simtrack_nodes::SwitchObjects
  :super ros::object
  :slots ())

(setf (get simtrack_nodes::SwitchObjects :md5sum-) "4f4cbe3ea9a40859a121fa0687f21d1f")
(setf (get simtrack_nodes::SwitchObjects :datatype-) "simtrack_nodes/SwitchObjects")
(setf (get simtrack_nodes::SwitchObjects :request) simtrack_nodes::SwitchObjectsRequest)
(setf (get simtrack_nodes::SwitchObjects :response) simtrack_nodes::SwitchObjectsResponse)

(defmethod simtrack_nodes::SwitchObjectsRequest
  (:response () (instance simtrack_nodes::SwitchObjectsResponse :init)))

(setf (get simtrack_nodes::SwitchObjectsRequest :md5sum-) "4f4cbe3ea9a40859a121fa0687f21d1f")
(setf (get simtrack_nodes::SwitchObjectsRequest :datatype-) "simtrack_nodes/SwitchObjectsRequest")
(setf (get simtrack_nodes::SwitchObjectsRequest :definition-)
      "string[] model_names
---
int32 return_code

")

(setf (get simtrack_nodes::SwitchObjectsResponse :md5sum-) "4f4cbe3ea9a40859a121fa0687f21d1f")
(setf (get simtrack_nodes::SwitchObjectsResponse :datatype-) "simtrack_nodes/SwitchObjectsResponse")
(setf (get simtrack_nodes::SwitchObjectsResponse :definition-)
      "string[] model_names
---
int32 return_code

")



(provide :simtrack_nodes/SwitchObjects "4f4cbe3ea9a40859a121fa0687f21d1f")



; Auto-generated. Do not edit!


(cl:in-package simtrack_nodes-srv)


;//! \htmlinclude SwitchCamera-request.msg.html

(cl:defclass <SwitchCamera-request> (roslisp-msg-protocol:ros-message)
  ((camera
    :reader camera
    :initarg :camera
    :type cl:integer
    :initform 0))
)

(cl:defclass SwitchCamera-request (<SwitchCamera-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchCamera-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchCamera-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simtrack_nodes-srv:<SwitchCamera-request> is deprecated: use simtrack_nodes-srv:SwitchCamera-request instead.")))

(cl:ensure-generic-function 'camera-val :lambda-list '(m))
(cl:defmethod camera-val ((m <SwitchCamera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simtrack_nodes-srv:camera-val is deprecated.  Use simtrack_nodes-srv:camera instead.")
  (camera m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchCamera-request>) ostream)
  "Serializes a message object of type '<SwitchCamera-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'camera)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'camera)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'camera)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchCamera-request>) istream)
  "Deserializes a message object of type '<SwitchCamera-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'camera)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'camera)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'camera)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchCamera-request>)))
  "Returns string type for a service object of type '<SwitchCamera-request>"
  "simtrack_nodes/SwitchCameraRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchCamera-request)))
  "Returns string type for a service object of type 'SwitchCamera-request"
  "simtrack_nodes/SwitchCameraRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchCamera-request>)))
  "Returns md5sum for a message object of type '<SwitchCamera-request>"
  "c5b9a373078bd18eb6a83f9039d973d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchCamera-request)))
  "Returns md5sum for a message object of type 'SwitchCamera-request"
  "c5b9a373078bd18eb6a83f9039d973d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchCamera-request>)))
  "Returns full string definition for message of type '<SwitchCamera-request>"
  (cl:format cl:nil "uint32 camera~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchCamera-request)))
  "Returns full string definition for message of type 'SwitchCamera-request"
  (cl:format cl:nil "uint32 camera~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchCamera-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchCamera-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchCamera-request
    (cl:cons ':camera (camera msg))
))
;//! \htmlinclude SwitchCamera-response.msg.html

(cl:defclass <SwitchCamera-response> (roslisp-msg-protocol:ros-message)
  ((return_code
    :reader return_code
    :initarg :return_code
    :type cl:integer
    :initform 0))
)

(cl:defclass SwitchCamera-response (<SwitchCamera-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchCamera-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchCamera-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simtrack_nodes-srv:<SwitchCamera-response> is deprecated: use simtrack_nodes-srv:SwitchCamera-response instead.")))

(cl:ensure-generic-function 'return_code-val :lambda-list '(m))
(cl:defmethod return_code-val ((m <SwitchCamera-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simtrack_nodes-srv:return_code-val is deprecated.  Use simtrack_nodes-srv:return_code instead.")
  (return_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchCamera-response>) ostream)
  "Serializes a message object of type '<SwitchCamera-response>"
  (cl:let* ((signed (cl:slot-value msg 'return_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchCamera-response>) istream)
  "Deserializes a message object of type '<SwitchCamera-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'return_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchCamera-response>)))
  "Returns string type for a service object of type '<SwitchCamera-response>"
  "simtrack_nodes/SwitchCameraResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchCamera-response)))
  "Returns string type for a service object of type 'SwitchCamera-response"
  "simtrack_nodes/SwitchCameraResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchCamera-response>)))
  "Returns md5sum for a message object of type '<SwitchCamera-response>"
  "c5b9a373078bd18eb6a83f9039d973d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchCamera-response)))
  "Returns md5sum for a message object of type 'SwitchCamera-response"
  "c5b9a373078bd18eb6a83f9039d973d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchCamera-response>)))
  "Returns full string definition for message of type '<SwitchCamera-response>"
  (cl:format cl:nil "int32 return_code~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchCamera-response)))
  "Returns full string definition for message of type 'SwitchCamera-response"
  (cl:format cl:nil "int32 return_code~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchCamera-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchCamera-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchCamera-response
    (cl:cons ':return_code (return_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SwitchCamera)))
  'SwitchCamera-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SwitchCamera)))
  'SwitchCamera-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchCamera)))
  "Returns string type for a service object of type '<SwitchCamera>"
  "simtrack_nodes/SwitchCamera")
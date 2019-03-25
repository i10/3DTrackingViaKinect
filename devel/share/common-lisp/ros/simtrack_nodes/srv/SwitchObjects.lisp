; Auto-generated. Do not edit!


(cl:in-package simtrack_nodes-srv)


;//! \htmlinclude SwitchObjects-request.msg.html

(cl:defclass <SwitchObjects-request> (roslisp-msg-protocol:ros-message)
  ((model_names
    :reader model_names
    :initarg :model_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SwitchObjects-request (<SwitchObjects-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchObjects-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchObjects-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simtrack_nodes-srv:<SwitchObjects-request> is deprecated: use simtrack_nodes-srv:SwitchObjects-request instead.")))

(cl:ensure-generic-function 'model_names-val :lambda-list '(m))
(cl:defmethod model_names-val ((m <SwitchObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simtrack_nodes-srv:model_names-val is deprecated.  Use simtrack_nodes-srv:model_names instead.")
  (model_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchObjects-request>) ostream)
  "Serializes a message object of type '<SwitchObjects-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'model_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'model_names))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchObjects-request>) istream)
  "Deserializes a message object of type '<SwitchObjects-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'model_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'model_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchObjects-request>)))
  "Returns string type for a service object of type '<SwitchObjects-request>"
  "simtrack_nodes/SwitchObjectsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchObjects-request)))
  "Returns string type for a service object of type 'SwitchObjects-request"
  "simtrack_nodes/SwitchObjectsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchObjects-request>)))
  "Returns md5sum for a message object of type '<SwitchObjects-request>"
  "4f4cbe3ea9a40859a121fa0687f21d1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchObjects-request)))
  "Returns md5sum for a message object of type 'SwitchObjects-request"
  "4f4cbe3ea9a40859a121fa0687f21d1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchObjects-request>)))
  "Returns full string definition for message of type '<SwitchObjects-request>"
  (cl:format cl:nil "string[] model_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchObjects-request)))
  "Returns full string definition for message of type 'SwitchObjects-request"
  (cl:format cl:nil "string[] model_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchObjects-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'model_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchObjects-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchObjects-request
    (cl:cons ':model_names (model_names msg))
))
;//! \htmlinclude SwitchObjects-response.msg.html

(cl:defclass <SwitchObjects-response> (roslisp-msg-protocol:ros-message)
  ((return_code
    :reader return_code
    :initarg :return_code
    :type cl:integer
    :initform 0))
)

(cl:defclass SwitchObjects-response (<SwitchObjects-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchObjects-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchObjects-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simtrack_nodes-srv:<SwitchObjects-response> is deprecated: use simtrack_nodes-srv:SwitchObjects-response instead.")))

(cl:ensure-generic-function 'return_code-val :lambda-list '(m))
(cl:defmethod return_code-val ((m <SwitchObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simtrack_nodes-srv:return_code-val is deprecated.  Use simtrack_nodes-srv:return_code instead.")
  (return_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchObjects-response>) ostream)
  "Serializes a message object of type '<SwitchObjects-response>"
  (cl:let* ((signed (cl:slot-value msg 'return_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchObjects-response>) istream)
  "Deserializes a message object of type '<SwitchObjects-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'return_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchObjects-response>)))
  "Returns string type for a service object of type '<SwitchObjects-response>"
  "simtrack_nodes/SwitchObjectsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchObjects-response)))
  "Returns string type for a service object of type 'SwitchObjects-response"
  "simtrack_nodes/SwitchObjectsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchObjects-response>)))
  "Returns md5sum for a message object of type '<SwitchObjects-response>"
  "4f4cbe3ea9a40859a121fa0687f21d1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchObjects-response)))
  "Returns md5sum for a message object of type 'SwitchObjects-response"
  "4f4cbe3ea9a40859a121fa0687f21d1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchObjects-response>)))
  "Returns full string definition for message of type '<SwitchObjects-response>"
  (cl:format cl:nil "int32 return_code~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchObjects-response)))
  "Returns full string definition for message of type 'SwitchObjects-response"
  (cl:format cl:nil "int32 return_code~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchObjects-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchObjects-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchObjects-response
    (cl:cons ':return_code (return_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SwitchObjects)))
  'SwitchObjects-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SwitchObjects)))
  'SwitchObjects-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchObjects)))
  "Returns string type for a service object of type '<SwitchObjects>"
  "simtrack_nodes/SwitchObjects")
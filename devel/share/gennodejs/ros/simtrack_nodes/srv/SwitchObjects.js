// Auto-generated. Do not edit!

// (in-package simtrack_nodes.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SwitchObjectsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_names = null;
    }
    else {
      if (initObj.hasOwnProperty('model_names')) {
        this.model_names = initObj.model_names
      }
      else {
        this.model_names = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchObjectsRequest
    // Serialize message field [model_names]
    bufferOffset = _arraySerializer.string(obj.model_names, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchObjectsRequest
    let len;
    let data = new SwitchObjectsRequest(null);
    // Deserialize message field [model_names]
    data.model_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.model_names.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simtrack_nodes/SwitchObjectsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c8cb040feb9b536dc85426121324844';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] model_names
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchObjectsRequest(null);
    if (msg.model_names !== undefined) {
      resolved.model_names = msg.model_names;
    }
    else {
      resolved.model_names = []
    }

    return resolved;
    }
};

class SwitchObjectsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.return_code = null;
    }
    else {
      if (initObj.hasOwnProperty('return_code')) {
        this.return_code = initObj.return_code
      }
      else {
        this.return_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchObjectsResponse
    // Serialize message field [return_code]
    bufferOffset = _serializer.int32(obj.return_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchObjectsResponse
    let len;
    let data = new SwitchObjectsResponse(null);
    // Deserialize message field [return_code]
    data.return_code = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simtrack_nodes/SwitchObjectsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c285fc637ab43abc6f59f97aab55a3bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 return_code
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchObjectsResponse(null);
    if (msg.return_code !== undefined) {
      resolved.return_code = msg.return_code;
    }
    else {
      resolved.return_code = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: SwitchObjectsRequest,
  Response: SwitchObjectsResponse,
  md5sum() { return '4f4cbe3ea9a40859a121fa0687f21d1f'; },
  datatype() { return 'simtrack_nodes/SwitchObjects'; }
};

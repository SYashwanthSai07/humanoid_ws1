// Auto-generated. Do not edit!

// (in-package ros_robot_controller.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let BusServoPosition = require('../msg/BusServoPosition.js');

//-----------------------------------------------------------

class GetBusServosPositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetBusServosPositionRequest
    // Serialize message field [id]
    bufferOffset = _arraySerializer.uint8(obj.id, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBusServosPositionRequest
    let len;
    let data = new GetBusServosPositionRequest(null);
    // Deserialize message field [id]
    data.id = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_robot_controller/GetBusServosPositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e2affb9bc5b5d9659bd819a1bcaeab9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetBusServosPositionRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = []
    }

    return resolved;
    }
};

class GetBusServosPositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetBusServosPositionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [position]
    // Serialize the length for message field [position]
    bufferOffset = _serializer.uint32(obj.position.length, buffer, bufferOffset);
    obj.position.forEach((val) => {
      bufferOffset = BusServoPosition.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBusServosPositionResponse
    let len;
    let data = new GetBusServosPositionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [position]
    // Deserialize array length for message field [position]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.position = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.position[i] = BusServoPosition.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.position.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_robot_controller/GetBusServosPositionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9b64b31d3ead9df21dff9cadcf7b948';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    ros_robot_controller/BusServoPosition[] position
    
    
    ================================================================================
    MSG: ros_robot_controller/BusServoPosition
    uint16 id
    uint16 position
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetBusServosPositionResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.position !== undefined) {
      resolved.position = new Array(msg.position.length);
      for (let i = 0; i < resolved.position.length; ++i) {
        resolved.position[i] = BusServoPosition.Resolve(msg.position[i]);
      }
    }
    else {
      resolved.position = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetBusServosPositionRequest,
  Response: GetBusServosPositionResponse,
  md5sum() { return '3c9b3df543d6a1087f63caf890b57f1c'; },
  datatype() { return 'ros_robot_controller/GetBusServosPosition'; }
};

// Auto-generated. Do not edit!

// (in-package ainex_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RGB {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.r = null;
      this.g = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0;
      }
      if (initObj.hasOwnProperty('g')) {
        this.g = initObj.g
      }
      else {
        this.g = 0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RGB
    // Serialize message field [r]
    bufferOffset = _serializer.int16(obj.r, buffer, bufferOffset);
    // Serialize message field [g]
    bufferOffset = _serializer.int16(obj.g, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.int16(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RGB
    let len;
    let data = new RGB(null);
    // Deserialize message field [r]
    data.r = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [g]
    data.g = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ainex_interfaces/RGB';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2dfe481b7e570e3e4be99cdc0453c9c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 r
    int16 g
    int16 b
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RGB(null);
    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0
    }

    if (msg.g !== undefined) {
      resolved.g = msg.g;
    }
    else {
      resolved.g = 0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    return resolved;
    }
};

module.exports = RGB;

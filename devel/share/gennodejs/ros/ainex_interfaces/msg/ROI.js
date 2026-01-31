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

class ROI {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.y_min = null;
      this.y_max = null;
      this.x_min = null;
      this.x_max = null;
    }
    else {
      if (initObj.hasOwnProperty('y_min')) {
        this.y_min = initObj.y_min
      }
      else {
        this.y_min = 0;
      }
      if (initObj.hasOwnProperty('y_max')) {
        this.y_max = initObj.y_max
      }
      else {
        this.y_max = 0;
      }
      if (initObj.hasOwnProperty('x_min')) {
        this.x_min = initObj.x_min
      }
      else {
        this.x_min = 0;
      }
      if (initObj.hasOwnProperty('x_max')) {
        this.x_max = initObj.x_max
      }
      else {
        this.x_max = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ROI
    // Serialize message field [y_min]
    bufferOffset = _serializer.int32(obj.y_min, buffer, bufferOffset);
    // Serialize message field [y_max]
    bufferOffset = _serializer.int32(obj.y_max, buffer, bufferOffset);
    // Serialize message field [x_min]
    bufferOffset = _serializer.int32(obj.x_min, buffer, bufferOffset);
    // Serialize message field [x_max]
    bufferOffset = _serializer.int32(obj.x_max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ROI
    let len;
    let data = new ROI(null);
    // Deserialize message field [y_min]
    data.y_min = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y_max]
    data.y_max = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x_min]
    data.x_min = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x_max]
    data.x_max = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ainex_interfaces/ROI';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b00faa7a7bb95e05cfa78034bc38cd9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 y_min
    int32 y_max
    int32 x_min
    int32 x_max
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ROI(null);
    if (msg.y_min !== undefined) {
      resolved.y_min = msg.y_min;
    }
    else {
      resolved.y_min = 0
    }

    if (msg.y_max !== undefined) {
      resolved.y_max = msg.y_max;
    }
    else {
      resolved.y_max = 0
    }

    if (msg.x_min !== undefined) {
      resolved.x_min = msg.x_min;
    }
    else {
      resolved.x_min = 0
    }

    if (msg.x_max !== undefined) {
      resolved.x_max = msg.x_max;
    }
    else {
      resolved.x_max = 0
    }

    return resolved;
    }
};

module.exports = ROI;

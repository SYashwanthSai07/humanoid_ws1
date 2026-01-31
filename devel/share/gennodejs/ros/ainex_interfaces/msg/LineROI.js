// Auto-generated. Do not edit!

// (in-package ainex_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ROI = require('./ROI.js');

//-----------------------------------------------------------

class LineROI {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.up = null;
      this.center = null;
      this.down = null;
    }
    else {
      if (initObj.hasOwnProperty('up')) {
        this.up = initObj.up
      }
      else {
        this.up = new ROI();
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new ROI();
      }
      if (initObj.hasOwnProperty('down')) {
        this.down = initObj.down
      }
      else {
        this.down = new ROI();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LineROI
    // Serialize message field [up]
    bufferOffset = ROI.serialize(obj.up, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = ROI.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [down]
    bufferOffset = ROI.serialize(obj.down, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineROI
    let len;
    let data = new LineROI(null);
    // Deserialize message field [up]
    data.up = ROI.deserialize(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = ROI.deserialize(buffer, bufferOffset);
    // Deserialize message field [down]
    data.down = ROI.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ainex_interfaces/LineROI';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bccdc6e8e70cb622e1827d4df83b58fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ainex_interfaces/ROI up
    ainex_interfaces/ROI center
    ainex_interfaces/ROI down
    
    ================================================================================
    MSG: ainex_interfaces/ROI
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
    const resolved = new LineROI(null);
    if (msg.up !== undefined) {
      resolved.up = ROI.Resolve(msg.up)
    }
    else {
      resolved.up = new ROI()
    }

    if (msg.center !== undefined) {
      resolved.center = ROI.Resolve(msg.center)
    }
    else {
      resolved.center = new ROI()
    }

    if (msg.down !== undefined) {
      resolved.down = ROI.Resolve(msg.down)
    }
    else {
      resolved.down = new ROI()
    }

    return resolved;
    }
};

module.exports = LineROI;

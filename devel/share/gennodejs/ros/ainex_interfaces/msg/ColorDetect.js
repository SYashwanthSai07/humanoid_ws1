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
let LineROI = require('./LineROI.js');

//-----------------------------------------------------------

class ColorDetect {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color_name = null;
      this.use_name = null;
      this.detect_type = null;
      this.roi = null;
      this.line_roi = null;
      this.image_process_size = null;
      this.lab_min = null;
      this.lab_max = null;
      this.min_area = null;
      this.max_area = null;
    }
    else {
      if (initObj.hasOwnProperty('color_name')) {
        this.color_name = initObj.color_name
      }
      else {
        this.color_name = '';
      }
      if (initObj.hasOwnProperty('use_name')) {
        this.use_name = initObj.use_name
      }
      else {
        this.use_name = false;
      }
      if (initObj.hasOwnProperty('detect_type')) {
        this.detect_type = initObj.detect_type
      }
      else {
        this.detect_type = '';
      }
      if (initObj.hasOwnProperty('roi')) {
        this.roi = initObj.roi
      }
      else {
        this.roi = new ROI();
      }
      if (initObj.hasOwnProperty('line_roi')) {
        this.line_roi = initObj.line_roi
      }
      else {
        this.line_roi = new LineROI();
      }
      if (initObj.hasOwnProperty('image_process_size')) {
        this.image_process_size = initObj.image_process_size
      }
      else {
        this.image_process_size = [];
      }
      if (initObj.hasOwnProperty('lab_min')) {
        this.lab_min = initObj.lab_min
      }
      else {
        this.lab_min = [];
      }
      if (initObj.hasOwnProperty('lab_max')) {
        this.lab_max = initObj.lab_max
      }
      else {
        this.lab_max = [];
      }
      if (initObj.hasOwnProperty('min_area')) {
        this.min_area = initObj.min_area
      }
      else {
        this.min_area = 0.0;
      }
      if (initObj.hasOwnProperty('max_area')) {
        this.max_area = initObj.max_area
      }
      else {
        this.max_area = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ColorDetect
    // Serialize message field [color_name]
    bufferOffset = _serializer.string(obj.color_name, buffer, bufferOffset);
    // Serialize message field [use_name]
    bufferOffset = _serializer.bool(obj.use_name, buffer, bufferOffset);
    // Serialize message field [detect_type]
    bufferOffset = _serializer.string(obj.detect_type, buffer, bufferOffset);
    // Serialize message field [roi]
    bufferOffset = ROI.serialize(obj.roi, buffer, bufferOffset);
    // Serialize message field [line_roi]
    bufferOffset = LineROI.serialize(obj.line_roi, buffer, bufferOffset);
    // Serialize message field [image_process_size]
    bufferOffset = _arraySerializer.uint32(obj.image_process_size, buffer, bufferOffset, null);
    // Serialize message field [lab_min]
    bufferOffset = _arraySerializer.int16(obj.lab_min, buffer, bufferOffset, null);
    // Serialize message field [lab_max]
    bufferOffset = _arraySerializer.int16(obj.lab_max, buffer, bufferOffset, null);
    // Serialize message field [min_area]
    bufferOffset = _serializer.float64(obj.min_area, buffer, bufferOffset);
    // Serialize message field [max_area]
    bufferOffset = _serializer.float64(obj.max_area, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ColorDetect
    let len;
    let data = new ColorDetect(null);
    // Deserialize message field [color_name]
    data.color_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [use_name]
    data.use_name = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [detect_type]
    data.detect_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [roi]
    data.roi = ROI.deserialize(buffer, bufferOffset);
    // Deserialize message field [line_roi]
    data.line_roi = LineROI.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_process_size]
    data.image_process_size = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [lab_min]
    data.lab_min = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [lab_max]
    data.lab_max = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [min_area]
    data.min_area = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_area]
    data.max_area = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.color_name.length;
    length += object.detect_type.length;
    length += 4 * object.image_process_size.length;
    length += 2 * object.lab_min.length;
    length += 2 * object.lab_max.length;
    return length + 101;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ainex_interfaces/ColorDetect';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c6d76275e561b8430ce7facd08f9909';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string color_name
    bool use_name
    string detect_type
    ainex_interfaces/ROI roi
    ainex_interfaces/LineROI line_roi
    uint32[] image_process_size
    int16[] lab_min
    int16[] lab_max
    float64 min_area
    float64 max_area
    
    ================================================================================
    MSG: ainex_interfaces/ROI
    int32 y_min
    int32 y_max
    int32 x_min
    int32 x_max
    
    ================================================================================
    MSG: ainex_interfaces/LineROI
    ainex_interfaces/ROI up
    ainex_interfaces/ROI center
    ainex_interfaces/ROI down
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ColorDetect(null);
    if (msg.color_name !== undefined) {
      resolved.color_name = msg.color_name;
    }
    else {
      resolved.color_name = ''
    }

    if (msg.use_name !== undefined) {
      resolved.use_name = msg.use_name;
    }
    else {
      resolved.use_name = false
    }

    if (msg.detect_type !== undefined) {
      resolved.detect_type = msg.detect_type;
    }
    else {
      resolved.detect_type = ''
    }

    if (msg.roi !== undefined) {
      resolved.roi = ROI.Resolve(msg.roi)
    }
    else {
      resolved.roi = new ROI()
    }

    if (msg.line_roi !== undefined) {
      resolved.line_roi = LineROI.Resolve(msg.line_roi)
    }
    else {
      resolved.line_roi = new LineROI()
    }

    if (msg.image_process_size !== undefined) {
      resolved.image_process_size = msg.image_process_size;
    }
    else {
      resolved.image_process_size = []
    }

    if (msg.lab_min !== undefined) {
      resolved.lab_min = msg.lab_min;
    }
    else {
      resolved.lab_min = []
    }

    if (msg.lab_max !== undefined) {
      resolved.lab_max = msg.lab_max;
    }
    else {
      resolved.lab_max = []
    }

    if (msg.min_area !== undefined) {
      resolved.min_area = msg.min_area;
    }
    else {
      resolved.min_area = 0.0
    }

    if (msg.max_area !== undefined) {
      resolved.max_area = msg.max_area;
    }
    else {
      resolved.max_area = 0.0
    }

    return resolved;
    }
};

module.exports = ColorDetect;

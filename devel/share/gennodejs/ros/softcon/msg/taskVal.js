// Auto-generated. Do not edit!

// (in-package softcon.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class taskVal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.thrust_factor = null;
      this.yaw_setpoint = null;
      this.depth_setpoint = null;
      this.speed_change = null;
    }
    else {
      if (initObj.hasOwnProperty('thrust_factor')) {
        this.thrust_factor = initObj.thrust_factor
      }
      else {
        this.thrust_factor = 0;
      }
      if (initObj.hasOwnProperty('yaw_setpoint')) {
        this.yaw_setpoint = initObj.yaw_setpoint
      }
      else {
        this.yaw_setpoint = 0;
      }
      if (initObj.hasOwnProperty('depth_setpoint')) {
        this.depth_setpoint = initObj.depth_setpoint
      }
      else {
        this.depth_setpoint = 0;
      }
      if (initObj.hasOwnProperty('speed_change')) {
        this.speed_change = initObj.speed_change
      }
      else {
        this.speed_change = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type taskVal
    // Serialize message field [thrust_factor]
    bufferOffset = _serializer.int32(obj.thrust_factor, buffer, bufferOffset);
    // Serialize message field [yaw_setpoint]
    bufferOffset = _serializer.int32(obj.yaw_setpoint, buffer, bufferOffset);
    // Serialize message field [depth_setpoint]
    bufferOffset = _serializer.int32(obj.depth_setpoint, buffer, bufferOffset);
    // Serialize message field [speed_change]
    bufferOffset = _serializer.int32(obj.speed_change, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type taskVal
    let len;
    let data = new taskVal(null);
    // Deserialize message field [thrust_factor]
    data.thrust_factor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [yaw_setpoint]
    data.yaw_setpoint = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [depth_setpoint]
    data.depth_setpoint = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed_change]
    data.speed_change = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'softcon/taskVal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34eb4660468f98f5c19094fca75c6145';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 thrust_factor
    int32 yaw_setpoint
    int32 depth_setpoint
    int32 speed_change
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new taskVal(null);
    if (msg.thrust_factor !== undefined) {
      resolved.thrust_factor = msg.thrust_factor;
    }
    else {
      resolved.thrust_factor = 0
    }

    if (msg.yaw_setpoint !== undefined) {
      resolved.yaw_setpoint = msg.yaw_setpoint;
    }
    else {
      resolved.yaw_setpoint = 0
    }

    if (msg.depth_setpoint !== undefined) {
      resolved.depth_setpoint = msg.depth_setpoint;
    }
    else {
      resolved.depth_setpoint = 0
    }

    if (msg.speed_change !== undefined) {
      resolved.speed_change = msg.speed_change;
    }
    else {
      resolved.speed_change = 0
    }

    return resolved;
    }
};

module.exports = taskVal;

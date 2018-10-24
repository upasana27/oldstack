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

class taskFlag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.offset = null;
      this.yaw_change = null;
      this.depth_change = null;
      this.speed_change = null;
    }
    else {
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0;
      }
      if (initObj.hasOwnProperty('yaw_change')) {
        this.yaw_change = initObj.yaw_change
      }
      else {
        this.yaw_change = 0;
      }
      if (initObj.hasOwnProperty('depth_change')) {
        this.depth_change = initObj.depth_change
      }
      else {
        this.depth_change = 0;
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
    // Serializes a message object of type taskFlag
    // Serialize message field [offset]
    bufferOffset = _serializer.int8(obj.offset, buffer, bufferOffset);
    // Serialize message field [yaw_change]
    bufferOffset = _serializer.int8(obj.yaw_change, buffer, bufferOffset);
    // Serialize message field [depth_change]
    bufferOffset = _serializer.int8(obj.depth_change, buffer, bufferOffset);
    // Serialize message field [speed_change]
    bufferOffset = _serializer.int8(obj.speed_change, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type taskFlag
    let len;
    let data = new taskFlag(null);
    // Deserialize message field [offset]
    data.offset = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [yaw_change]
    data.yaw_change = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [depth_change]
    data.depth_change = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [speed_change]
    data.speed_change = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'softcon/taskFlag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2109de6632485726fc1bd87c14c6022';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 offset
    int8 yaw_change
    int8 depth_change
    int8 speed_change
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new taskFlag(null);
    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0
    }

    if (msg.yaw_change !== undefined) {
      resolved.yaw_change = msg.yaw_change;
    }
    else {
      resolved.yaw_change = 0
    }

    if (msg.depth_change !== undefined) {
      resolved.depth_change = msg.depth_change;
    }
    else {
      resolved.depth_change = 0
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

module.exports = taskFlag;

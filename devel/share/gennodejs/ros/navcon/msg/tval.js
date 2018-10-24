// Auto-generated. Do not edit!

// (in-package navcon.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class tval {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.depthright = null;
      this.depthleft = null;
      this.offyawfront = null;
      this.offyawback = null;
      this.speedleft = null;
      this.speedright = null;
    }
    else {
      if (initObj.hasOwnProperty('depthright')) {
        this.depthright = initObj.depthright
      }
      else {
        this.depthright = 0;
      }
      if (initObj.hasOwnProperty('depthleft')) {
        this.depthleft = initObj.depthleft
      }
      else {
        this.depthleft = 0;
      }
      if (initObj.hasOwnProperty('offyawfront')) {
        this.offyawfront = initObj.offyawfront
      }
      else {
        this.offyawfront = 0;
      }
      if (initObj.hasOwnProperty('offyawback')) {
        this.offyawback = initObj.offyawback
      }
      else {
        this.offyawback = 0;
      }
      if (initObj.hasOwnProperty('speedleft')) {
        this.speedleft = initObj.speedleft
      }
      else {
        this.speedleft = 0;
      }
      if (initObj.hasOwnProperty('speedright')) {
        this.speedright = initObj.speedright
      }
      else {
        this.speedright = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tval
    // Serialize message field [depthright]
    bufferOffset = _serializer.int16(obj.depthright, buffer, bufferOffset);
    // Serialize message field [depthleft]
    bufferOffset = _serializer.int16(obj.depthleft, buffer, bufferOffset);
    // Serialize message field [offyawfront]
    bufferOffset = _serializer.int16(obj.offyawfront, buffer, bufferOffset);
    // Serialize message field [offyawback]
    bufferOffset = _serializer.int16(obj.offyawback, buffer, bufferOffset);
    // Serialize message field [speedleft]
    bufferOffset = _serializer.int16(obj.speedleft, buffer, bufferOffset);
    // Serialize message field [speedright]
    bufferOffset = _serializer.int16(obj.speedright, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tval
    let len;
    let data = new tval(null);
    // Deserialize message field [depthright]
    data.depthright = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [depthleft]
    data.depthleft = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [offyawfront]
    data.offyawfront = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [offyawback]
    data.offyawback = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [speedleft]
    data.speedleft = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [speedright]
    data.speedright = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navcon/tval';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dda295200907eed02efd0f3614e26ed4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 depthright
    int16 depthleft
    int16 offyawfront
    int16 offyawback
    int16 speedleft
    int16 speedright
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new tval(null);
    if (msg.depthright !== undefined) {
      resolved.depthright = msg.depthright;
    }
    else {
      resolved.depthright = 0
    }

    if (msg.depthleft !== undefined) {
      resolved.depthleft = msg.depthleft;
    }
    else {
      resolved.depthleft = 0
    }

    if (msg.offyawfront !== undefined) {
      resolved.offyawfront = msg.offyawfront;
    }
    else {
      resolved.offyawfront = 0
    }

    if (msg.offyawback !== undefined) {
      resolved.offyawback = msg.offyawback;
    }
    else {
      resolved.offyawback = 0
    }

    if (msg.speedleft !== undefined) {
      resolved.speedleft = msg.speedleft;
    }
    else {
      resolved.speedleft = 0
    }

    if (msg.speedright !== undefined) {
      resolved.speedright = msg.speedright;
    }
    else {
      resolved.speedright = 0
    }

    return resolved;
    }
};

module.exports = tval;

// Auto-generated. Do not edit!

// (in-package bismillah_fp3.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class potition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ballx = null;
      this.bally = null;
      this.sudut = null;
      this.vx = null;
      this.vy = null;
      this.vtheta = null;
    }
    else {
      if (initObj.hasOwnProperty('ballx')) {
        this.ballx = initObj.ballx
      }
      else {
        this.ballx = 0;
      }
      if (initObj.hasOwnProperty('bally')) {
        this.bally = initObj.bally
      }
      else {
        this.bally = 0;
      }
      if (initObj.hasOwnProperty('sudut')) {
        this.sudut = initObj.sudut
      }
      else {
        this.sudut = 0;
      }
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0;
      }
      if (initObj.hasOwnProperty('vtheta')) {
        this.vtheta = initObj.vtheta
      }
      else {
        this.vtheta = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type potition
    // Serialize message field [ballx]
    bufferOffset = _serializer.int64(obj.ballx, buffer, bufferOffset);
    // Serialize message field [bally]
    bufferOffset = _serializer.int64(obj.bally, buffer, bufferOffset);
    // Serialize message field [sudut]
    bufferOffset = _serializer.int64(obj.sudut, buffer, bufferOffset);
    // Serialize message field [vx]
    bufferOffset = _serializer.int64(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.int64(obj.vy, buffer, bufferOffset);
    // Serialize message field [vtheta]
    bufferOffset = _serializer.int64(obj.vtheta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type potition
    let len;
    let data = new potition(null);
    // Deserialize message field [ballx]
    data.ballx = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [bally]
    data.bally = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [sudut]
    data.sudut = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [vx]
    data.vx = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [vtheta]
    data.vtheta = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bismillah_fp3/potition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db8c61c51d29c39ebff20f8165e09305';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 ballx
    int64 bally
    int64 sudut
    int64 vx
    int64 vy
    int64 vtheta
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new potition(null);
    if (msg.ballx !== undefined) {
      resolved.ballx = msg.ballx;
    }
    else {
      resolved.ballx = 0
    }

    if (msg.bally !== undefined) {
      resolved.bally = msg.bally;
    }
    else {
      resolved.bally = 0
    }

    if (msg.sudut !== undefined) {
      resolved.sudut = msg.sudut;
    }
    else {
      resolved.sudut = 0
    }

    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0
    }

    if (msg.vtheta !== undefined) {
      resolved.vtheta = msg.vtheta;
    }
    else {
      resolved.vtheta = 0
    }

    return resolved;
    }
};

module.exports = potition;

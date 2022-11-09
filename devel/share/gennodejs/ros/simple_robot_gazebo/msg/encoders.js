// Auto-generated. Do not edit!

// (in-package simple_robot_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class encoders {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.encoderTicks = null;
      this.timeStamp = null;
    }
    else {
      if (initObj.hasOwnProperty('encoderTicks')) {
        this.encoderTicks = initObj.encoderTicks
      }
      else {
        this.encoderTicks = [];
      }
      if (initObj.hasOwnProperty('timeStamp')) {
        this.timeStamp = initObj.timeStamp
      }
      else {
        this.timeStamp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type encoders
    // Serialize message field [encoderTicks]
    bufferOffset = _arraySerializer.float32(obj.encoderTicks, buffer, bufferOffset, null);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint32(obj.timeStamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type encoders
    let len;
    let data = new encoders(null);
    // Deserialize message field [encoderTicks]
    data.encoderTicks = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.encoderTicks.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simple_robot_gazebo/encoders';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07aba7a5adda19d5b02a03ead81505ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] encoderTicks
    uint32 timeStamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new encoders(null);
    if (msg.encoderTicks !== undefined) {
      resolved.encoderTicks = msg.encoderTicks;
    }
    else {
      resolved.encoderTicks = []
    }

    if (msg.timeStamp !== undefined) {
      resolved.timeStamp = msg.timeStamp;
    }
    else {
      resolved.timeStamp = 0
    }

    return resolved;
    }
};

module.exports = encoders;

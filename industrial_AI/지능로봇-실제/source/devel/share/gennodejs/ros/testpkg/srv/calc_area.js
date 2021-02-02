// Auto-generated. Do not edit!

// (in-package testpkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class calc_areaRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.radius_array = null;
    }
    else {
      if (initObj.hasOwnProperty('radius_array')) {
        this.radius_array = initObj.radius_array
      }
      else {
        this.radius_array = new Array(10).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type calc_areaRequest
    // Check that the constant length array field [radius_array] has the right length
    if (obj.radius_array.length !== 10) {
      throw new Error('Unable to serialize array field radius_array - length must be 10')
    }
    // Serialize message field [radius_array]
    bufferOffset = _arraySerializer.int64(obj.radius_array, buffer, bufferOffset, 10);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type calc_areaRequest
    let len;
    let data = new calc_areaRequest(null);
    // Deserialize message field [radius_array]
    data.radius_array = _arrayDeserializer.int64(buffer, bufferOffset, 10)
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a service object
    return 'testpkg/calc_areaRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd868a20f77b5a8769438c72cbf1e0323';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[10] radius_array
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new calc_areaRequest(null);
    if (msg.radius_array !== undefined) {
      resolved.radius_array = msg.radius_array;
    }
    else {
      resolved.radius_array = new Array(10).fill(0)
    }

    return resolved;
    }
};

class calc_areaResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.calc_array = null;
    }
    else {
      if (initObj.hasOwnProperty('calc_array')) {
        this.calc_array = initObj.calc_array
      }
      else {
        this.calc_array = new Array(10).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type calc_areaResponse
    // Check that the constant length array field [calc_array] has the right length
    if (obj.calc_array.length !== 10) {
      throw new Error('Unable to serialize array field calc_array - length must be 10')
    }
    // Serialize message field [calc_array]
    bufferOffset = _arraySerializer.float64(obj.calc_array, buffer, bufferOffset, 10);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type calc_areaResponse
    let len;
    let data = new calc_areaResponse(null);
    // Deserialize message field [calc_array]
    data.calc_array = _arrayDeserializer.float64(buffer, bufferOffset, 10)
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a service object
    return 'testpkg/calc_areaResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14d14deea478234bbb598eafb126d3e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[10] calc_array
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new calc_areaResponse(null);
    if (msg.calc_array !== undefined) {
      resolved.calc_array = msg.calc_array;
    }
    else {
      resolved.calc_array = new Array(10).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: calc_areaRequest,
  Response: calc_areaResponse,
  md5sum() { return 'a72cfd8f27680b80f4ad1d29267c5ec1'; },
  datatype() { return 'testpkg/calc_area'; }
};

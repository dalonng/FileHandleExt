import Foundation

extension Data {

  var byte: UInt8 {
    uint8
  }

  var int8: Int8 {
    withUnsafeBytes { unsafeRawBufferPointer in
      unsafeRawBufferPointer.load(as: Int8.self)
    }
  }

  var uint8: UInt8 {
    withUnsafeBytes { unsafeRawBufferPointer in
      unsafeRawBufferPointer.load(as: UInt8.self)
    }
  }

  var int16: Int16 {
    withUnsafeBytes { unsafeRawBufferPointer in
      unsafeRawBufferPointer.load(as: Int16.self)
    }
  }

  var uint16: UInt16 {
    withUnsafeBytes { unsafeRawBufferPointer in
      unsafeRawBufferPointer.load(as: UInt16.self)
    }
  }

  var int32: Int32 {
    withUnsafeBytes { unsafeRawBufferPointer in
      unsafeRawBufferPointer.load(as: Int32.self)
    }
  }

  var uint32: UInt32 {
    withUnsafeBytes { unsafeRawBufferPointer in
      unsafeRawBufferPointer.load(as: UInt32.self)
    }
  }

  var int64: Int64 {
    withUnsafeBytes { unsafeRawBufferPointer in
      unsafeRawBufferPointer.load(as: Int64.self)
    }
  }

  var uint64: UInt64 {
    withUnsafeBytes { unsafeRawBufferPointer in
      unsafeRawBufferPointer.load(as: UInt64.self)
    }
  }
}

extension Data {
  /// Returns a hexadecimal string representation of the data.
  var hexString: String {
    return map { String(format: "%02hhx", $0) }.joined()
  }
}

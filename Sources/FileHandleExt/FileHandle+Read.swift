import Foundation

extension FileHandle {
  func readByte() -> UInt8? {
    readUInt8()
  }

  func readInt8() -> Int8? {
    guard let v = readUInt8() else { return nil }
    return Int8(v)
  }

  func readUInt8() -> UInt8? {
    do {
      if let data = try read(upToCount: 1) {
        return data.uint8
      }
    } catch {
      fatalError("read UInt8 error: \(error)")
    }
    return nil
  }

  func readInt16() -> Int16? {
    guard let v = readUInt16() else { return nil }
    return Int16(v)
  }

  func readUInt16() -> UInt16? {
    do {
      if let data = try read(upToCount: 2) {
        return data.uint16
      }
    } catch {
      fatalError("read UInt16 error: \(error)")
    }
    return nil
  }

  func readInt32() -> Int32? {
    guard let v = readUInt32() else { return nil }
    return Int32(v)
  }

  func readUInt32() -> UInt32? {
    do {
      if let data = try read(upToCount: 4) {
        return data.uint32
      }
    } catch {
      fatalError("read UInt32 error: \(error)")
    }
    return nil
  }

  func readInt64() -> Int64? {
    guard let v = readUInt64() else { return nil }
    return Int64(v)
  }

  func readUInt64() -> UInt64? {
    do {
      if let data = try read(upToCount: 8) {
        return data.uint64
      }
    } catch {
      fatalError("read UInt64 error: \(error)")
    }
    return nil
  }
}

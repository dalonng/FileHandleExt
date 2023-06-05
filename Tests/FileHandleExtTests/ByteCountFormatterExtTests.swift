import XCTest

@testable import FileHandleExt

final class ByteCountFormatterExtTests: XCTestCase {
  func testHumanReadable() {
    let humanReadable = ByteCountFormatter.humanReadable
    XCTAssertEqual(
      humanReadable.allowedUnits, [.useAll],
      "ByteCountFormatter.humanReadable allowedUnits is not [.useAll]")

    XCTAssertEqual(
      humanReadable.countStyle, .file, "ByteCountFormatter.humanReadable countStyle is not .file")
  }

  func testSize() {
    XCTAssertEqual(100_000_000.fileSize, "100 MB", "file size is not 100 MB")
    XCTAssertEqual(1000_000_000.fileSize, "1 GB", "file size is not 100 MB")
  }
}

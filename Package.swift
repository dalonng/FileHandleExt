// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FileHandleExt",
  platforms: [.iOS(.v12), .macOS(.v11), .tvOS(.v12), .watchOS(.v5)],
  products: [
    .library(name: "FileHandleExt", targets: ["FileHandleExt"])
  ],
  dependencies: [
    .package(url: "https://github.com/lukepistrol/SwiftLintPlugin", from: "0.2.2")
  ],
  targets: [
    .target(
      name: "FileHandleExt", plugins: [.plugin(name: "SwiftLint", package: "SwiftLintPlugin")]
    ),
    .testTarget(
      name: "FileHandleExtTests", dependencies: ["FileHandleExt"]
    ),
  ]
)

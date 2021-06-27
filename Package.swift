// swift-tools-version:5.4

import PackageDescription

let package = Package(
  name: "swift-cgit2",
  platforms: [
    .macOS(.v10_13),
    .iOS(.v11),
  ],
  products: [
    .library(name: "Cgit2", targets: ["Cgit2"]),
  ],
  targets: [
    .target(
      name: "Cgit2",
      dependencies: ["OpenSSL", "libgit2", "libssh2"],
      linkerSettings: [.linkedLibrary("iconv"), .linkedLibrary("z")]
    ),
    .testTarget(name: "Cgit2Tests", dependencies: ["Cgit2"]),

    .binaryTarget(
      name: "OpenSSL",
      url: "https://github.com/sharplet/swift-cgit2/releases/download/v1.1.0/OpenSSL.xcframework.zip",
      checksum: "cf95859d15d8f61a229023e70ed3ece532e47a143247de56931c329a029c7d35"
    ),
    .binaryTarget(
      name: "libgit2",
      url: "https://github.com/sharplet/swift-cgit2/releases/download/v1.1.0/libgit2.xcframework.zip",
      checksum: "6252d651a74ef953b29d7144ed20cf91be2ebe7f148ea3c0eaba00ddca1cd8cd"
    ),
    .binaryTarget(
      name: "libssh2",
      url: "https://github.com/sharplet/swift-cgit2/releases/download/v1.1.0/libssh2.xcframework.zip",
      checksum: "7b34a75674b622cc98c7a524a555817abdea455220070bdfb91b9234f4217c8e"
    ),
  ]
)

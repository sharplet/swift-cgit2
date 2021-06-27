// swift-tools-version:5.4

import PackageDescription

let package = Package(
  name: "swift-git",
  targets: [
    .target(
      name: "Cgit2",
      dependencies: ["OpenSSL", "libgit2", "libssh2"],
      linkerSettings: [.linkedLibrary("iconv"), .linkedLibrary("z")]
    ),
    .testTarget(name: "Cgit2Tests", dependencies: ["Cgit2"]),

    .binaryTarget(name: "OpenSSL", path: ".build/OpenSSL.xcframework"),
    .binaryTarget(name: "libgit2", path: ".build/libgit2.xcframework"),
    .binaryTarget(name: "libssh2", path: ".build/libssh2.xcframework"),
    // .binaryTarget(
    //   name: "libgit2",
    //   url: "https://github.com/sharplet/swift-git/releases/v1.1.0/download/libgit2.xcframework.zip",
    //   checksum: "ddf955d108d0773effb531457b196f1509573cb2610562c30f9f021cace9edd9"
    // ),
  ]
)

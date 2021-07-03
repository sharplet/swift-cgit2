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
      url: "https://github.com/sharplet/swift-cgit2/releases/download/v1.1.1/OpenSSL.xcframework.zip",
      checksum: "65afedb6e49bfc58dbb785ff771592c3f8b093e595a11c99b271ece92d400fda"
    ),
    .binaryTarget(
      name: "libgit2",
      url: "https://github.com/sharplet/swift-cgit2/releases/download/v1.1.1/libgit2.xcframework.zip",
      checksum: "433fc5d4cb892325b4469eadf1eda33ede2663340cc36857484d166cc0ad5a99"
    ),
    .binaryTarget(
      name: "libssh2",
      url: "https://github.com/sharplet/swift-cgit2/releases/download/v1.1.1/libssh2.xcframework.zip",
      checksum: "ceceaeaf84cc2e89a61016c6951ba5bd27a75e3d0cd8ae21e328ad158ace340d"
    ),
  ]
)

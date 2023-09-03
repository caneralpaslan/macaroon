// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "macaroon",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "Macaroon", targets: ["Macaroon"])
    ],
    dependencies: [
        .package(url: "https://github.com/luximetr/AnyFormatKit.git", .upToNextMajor(from: "2.2.1")),
        .package(url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "5.0.0")),
        .package(name: "Macaw", url: "https://github.com/exyte/macaw.git", .upToNextMajor(from: "0.9.7")),
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.0"))
    ],
    targets: [
        .target(name: "Macaroon", dependencies: ["SnapKit", "AnyFormatKit", "Macaw", "Kingfisher"], path: "Sources/macaroon/Classes")
    ],
    swiftLanguageVersions: [.v5]
)

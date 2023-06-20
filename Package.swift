// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "music-app",
    defaultLocalization: "en",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "NetworkingInterface", targets: ["NetworkingInterface"]),
        .library(name: "Networking", targets: ["Networking"]),
        .library(name: "AppFeature", targets: ["AppFeature"]),
        .library(name: "HomeFeature", targets: ["HomeFeature"]),
        .library(name: "SearchFeature", targets: ["SearchFeature"]),
        .library(name: "UI", targets: ["UI"]),
        .library(name: "Shared", targets: ["Shared"]),
        .library(name: "Theme", targets: ["Shared"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "NetworkingInterface"),
        .target(name: "Networking", dependencies: ["NetworkingInterface"]),
        .target(name: "AppFeature", dependencies: ["HomeFeature", "SearchFeature", "UI"]),
        .target(name: "HomeFeature", dependencies: ["UI"]),
        .target(name: "SearchFeature", dependencies: ["UI"]),
        .target(name: "UI", dependencies: ["Shared"], resources: [.process("Resources/")]),
        .target(name: "Shared", dependencies: [])
    ]
)

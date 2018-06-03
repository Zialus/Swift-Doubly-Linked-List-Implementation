// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "LinkedList",
    targets: [
        .target(
            name: "LinkedList",
            dependencies: []),
        .target(
            name: "Main",
            dependencies: ["LinkedList"]),
        .testTarget(
            name: "LinkedListTest",
            dependencies: ["LinkedList"])
    ]
)

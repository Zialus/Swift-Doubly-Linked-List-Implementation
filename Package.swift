// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "LinkedList",
    targets: [
        .target(
            name: "LinkedList",
            dependencies: []
        ),
        .executableTarget(
            name: "Main",
            dependencies: ["LinkedList"]
        ),
        .testTarget(
            name: "LinkedListTests",
            dependencies: ["LinkedList"]
        )
    ]
)

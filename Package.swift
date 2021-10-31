// swift-tools-version:5.5

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

// swift-tools-version:5.3
//

import PackageDescription

let package = Package(
    name: "AFNetworking",
    platforms: [
        .macOS(.v11),
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "AFNetworking",
            targets: [
                "AFNetworking",
                "AFNetworkingiOS",
            ]
        ),
    ],
    targets: [
        .target(
            name: "AFNetworking",
            path: "AFNetworking",
            publicHeadersPath: ""
        ),
        .target(
            name: "AFNetworkingiOS",
            dependencies: [
                "AFNetworking"
            ],
            path: "UIKit+AFNetworking",
            publicHeadersPath: ""
        ),
    ]
)

// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

//
// Copyright (c) 2017 Emarsys. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "EmarsysSDKPackage",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "EmarsysSDKLibrary",
            targets: ["EmarsysSDKTarget"]),
        .library(
            name: "EmarsysNotificationExtensionLibrary",
            targets: ["EmarsysSDKTarget"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "EmarsysSDKTarget",
            dependencies: [],
            path: "Sources",
            cSettings: [
                .headerSearchPath("**")
            ]
        )
    ]
)

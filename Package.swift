// swift-tools-version:5.1
//
// Copyright (c) 2017 Emarsys. All rights reserved.
//

// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EmarsysSDKPackage",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "EmarsysSDKLibrary",
            targets: ["EmarsysSDKTarget"]),
        .library(
            name: "EmarsysNotificationExtensionLibrary",
            targets: ["EmarsysSDKTarget"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "EmarsysSDKTarget",
            dependencies: [],
            path: "Sources",
            exclude: ["Tests"],
            publicHeadersPath: "SdkAPI",
            cSettings: [
                .headerSearchPath("SdkAPI"),
                .headerSearchPath("Core"),
                .headerSearchPath("Core/Batch"),
                .headerSearchPath("Core/Categories"),
                .headerSearchPath("Core/ConnectionWatchdog"),
                .headerSearchPath("Core/ConnectionWatchdog/ThirdParty"),
                .headerSearchPath("Core/Database"),
                .headerSearchPath("Core/Database/Trigger"),
                .headerSearchPath("Core/Flipper"),
                .headerSearchPath("Core/Log"),
                .headerSearchPath("Core/Log/LogEntry"),
                .headerSearchPath("Core/Mappers"),
                .headerSearchPath("Core/Middlewares"),
                .headerSearchPath("Core/Models"),
                .headerSearchPath("Core/Networking"),
                .headerSearchPath("Core/Operation"),
                .headerSearchPath("Core/Providers"),
                .headerSearchPath("Core/Repository"),
                .headerSearchPath("Core/Repository/RequestModel"),
                .headerSearchPath("Core/Repository/Shard"),
                .headerSearchPath("Core/Repository/Specifications"),
                .headerSearchPath("Core/ResponseHandlers"),
                .headerSearchPath("Core/Schedulers"),
                .headerSearchPath("Core/Store"),
                .headerSearchPath("Core/Validators"),
                .headerSearchPath("Core/Worker"),
                .headerSearchPath("EmarsysSDK"),
                .headerSearchPath("EmarsysSDK/AppStart"),
                .headerSearchPath("EmarsysSDK/DeepLink"),
                .headerSearchPath("EmarsysSDK/DI"),
                .headerSearchPath("EmarsysSDK/Endpoints"),
                .headerSearchPath("EmarsysSDK/FlipperFeatures"),
                .headerSearchPath("EmarsysSDK/RequestTools"),
                .headerSearchPath("EmarsysSDK/Setup"),
                .headerSearchPath("MobileEngage"),
                .headerSearchPath("MobileEngage/Category"),
                .headerSearchPath("MobileEngage/IAM"),
                .headerSearchPath("MobileEngage/IAM/JSCommands"),
                .headerSearchPath("MobileEngage/IAM/Providers"),
                .headerSearchPath("MobileEngage/IAM/UI"),
                .headerSearchPath("MobileEngage/Inbox"),
                .headerSearchPath("MobileEngage/Internal"),
                .headerSearchPath("MobileEngage/Mappers"),
                .headerSearchPath("MobileEngage/Push"),
                .headerSearchPath("MobileEngage/RequestTools"),
                .headerSearchPath("MobileEngage/ResponseHandlers"),
                .headerSearchPath("MobileEngage/ResponseHandlers/InappMessage"),
                .headerSearchPath("MobileEngage/RichNotification"),
                .headerSearchPath("MobileEngage/Storage"),
                .headerSearchPath("MobileEngage/Storage/IAM"),
                .headerSearchPath("MobileEngage/Storage/IAM/ButtonClick"),
                .headerSearchPath("MobileEngage/Storage/IAM/DisplayedIAM"),
                .headerSearchPath("Predict"),
                .headerSearchPath("Predict/Mapper"),
                .headerSearchPath("Predict/Models"),
                .headerSearchPath("Predict/Recommendations"),
                .headerSearchPath("Predict/Requests"),
                .headerSearchPath("Predict/ResponseHandlers"),
                .headerSearchPath("MobileEngage/RichNotificationExtension"),
                .headerSearchPath("MobileEngage/RichNotificationExtension/Validators"),
        ])
    ]
)

// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// This file generated from post_build script, modify the script instaed of this file.

import PackageDescription

let package = Package(
    name: "MoEngage-iOS-SDK",
    platforms: [.iOS(.v11), .tvOS(.v11)],
    products: [], dependencies: [], targets: [],
    swiftLanguageVersions: [.v5]
)

struct MoEngagePackageProduct {
    let name: String
    let targets: [Target]
}

extension Collection where Element == Target.Dependency {
    static var `default`: [Target.Dependency] {
        return [
            "MoEngageAnalytics", "MoEngageCore", "MoEngageMessaging",
            "MoEngageObjCUtils", "MoEngageSDK", "MoEngageSecurity",
        ]
    }

    static func additional(dependency: Target.Dependency) -> [Target.Dependency] {
        var dependencies = Self.default
        dependencies.append(dependency)
        return dependencies
    }
}

let products: [MoEngagePackageProduct] = [
    .init(
        name: "MoEngage-iOS-SDK",
        targets: [
            .binaryTarget(name: "MoEngageAnalytics", url: "https://github.com/moengage/apple-sdk/releases/download/9.23.0/MoEngageAnalytics.xcframework.zip", checksum: "c66e1821e1b6ab66889189df9e0d654b707c00e422fc1ed6950d6577314f0ff3"),
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/9.23.0/MoEngageCore.xcframework.zip", checksum: "4dcc8b355ce66bacc4370b282248df662b34ee71b1138171cd1974ad9683b7d1"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/9.23.0/MoEngageMessaging.xcframework.zip", checksum: "a6d33373f24669462ebac6db35bd7befa077587399ffd1b14143ba453f52c819"),
            .binaryTarget(name: "MoEngageObjCUtils", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageObjCUtils.xcframework.zip", checksum: "00303f9ccc8882546709fcfbefa6b7ff305e5d8dee24af42360ad7e62020b0d1"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageSDK.xcframework.zip", checksum: "25994092c82b0ce008eaf08fefe6964338b9652c93e28087a7adbb752f59fe37"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageSecurity.xcframework.zip", checksum: "9f6cd3de7093d8ff67f07a1cbfda31d3c870601321b3c92ddfbfed27a786b757"),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "547854ceed99693bede020e18987de36bba56b7334b5ddb0e518b7e6de363e71"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/9.23.0/MoEngageInApps.xcframework.zip", checksum: "bc73edbb6438af435272c9f699e995d1d30ff4c11a2efbd5cd741d7e614b6b13"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/9.23.0/MoEngageCards.xcframework.zip", checksum: "78764d6d88dd6ea310882cf6ba38cfd6ab647bb4746a5b7ac13b4385da968c53"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageGeofence.xcframework.zip", checksum: "a33ed85ab3ba8ef8069305f9548458203e107b91db522bb295829598a9152006"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageRichNotification.xcframework.zip", checksum: "f0905f6f16c1f6d3ca97c349ce77809041818bc57bee58cd6a2fe904fe28f45c"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/apple-sdk/releases/download/9.23.0/MoEngageInbox.xcframework.zip", checksum: "12fae73adc1299ad6423f90710692ddd346ff3da212b5ab633c98198c16f66c1"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "cd8459f589d6b67696a7dc5805657f0f3a2e0eb17edad0d0ee8bf248d915b591"),
            .target(name: "MoEngageRealTimeTriggerSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
]

for product in products {
    for target in product.targets {
        package.targets.append(target)
    }
    package.products.append(
        .library(name: product.name, targets: product.targets.map { $0.name })
    )
}


// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GanessaaCapacitorDeviceModel",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "GanessaaCapacitorDeviceModel",
            targets: ["DeviceModelPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0"),
        .package(url: "https://github.com/devicekit/DeviceKit.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "DeviceModelPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm"),
                .product(name: "DeviceKit", package: "DeviceKit")
            ],
            path: "ios/Sources/DeviceModelPlugin"),
        .testTarget(
            name: "DeviceModelPluginTests",
            dependencies: ["DeviceModelPlugin"],
            path: "ios/Tests/DeviceModelPluginTests")
    ]
)
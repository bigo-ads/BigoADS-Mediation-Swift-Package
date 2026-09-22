// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "BigoADSMediation",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(name: "BigoADSAdMobAdapter", targets: ["BigoADSAdMobAdapter"]),
        .library(name: "BigoADSIronSourceAdapter", targets: ["BigoADSIronSourceAdapter"]),
        .library(name: "BigoADSMaxAdapter", targets: ["BigoADSMaxAdapter"]),
        .library(name: "BigoADSNewMaxAdapter", targets: ["BigoADSNewMaxAdapter"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/bigo-ads/BigoADS-Swift-Package.git",
            exact: "6.1.0"
        ),
    ],
    targets: [
        .target(
            name: "BigoADSAdMobAdapter",
            dependencies: [
                "bigo_ads_admob_adapter",
                .product(name: "BigoADS", package: "bigoads-swift-package"),
            ]
        ),
        .target(
            name: "BigoADSIronSourceAdapter",
            dependencies: [
                "bigo_ads_ironsource_adapter",
                .product(name: "BigoADS", package: "bigoads-swift-package"),
            ]
        ),
        .target(
            name: "BigoADSMaxAdapter",
            dependencies: [
                "bigo_ads_max_adapter",
                .product(name: "BigoADS", package: "bigoads-swift-package"),
            ]
        ),
        .target(
            name: "BigoADSNewMaxAdapter",
            dependencies: [
                "bigo_ads_new_max_adapter",
                .product(name: "BigoADS", package: "bigoads-swift-package"),
            ]
        ),
        .binaryTarget(
            name: "bigo_ads_admob_adapter",
            url: "https://static-fed-oss.adsbigo.com/bigoads-framework/bigo_ads_admob_adapter_6.1.0.0_50.zip",
            checksum: "d6a3e14130312c0dd8e716e45225877c027baa5393041a11215a5e06474b0aff"
        ),
        .binaryTarget(
            name: "bigo_ads_ironsource_adapter",
            url: "https://static-fed-oss.adsbigo.com/bigoads-framework/bigo-ads-ironsource-adapter_6.1.0.0_49.zip",
            checksum: "ac2f067059463b73ae46214becb67bbdcaefc1ff89c1677a54a06ece57e2eda7"
        ),
        .binaryTarget(
            name: "bigo_ads_max_adapter",
            url: "https://static-fed-oss.adsbigo.com/bigoads-framework/bigo_ads_max_adapter_6.1.0.0_52.zip",
            checksum: "033f036b1ece23b3f88ea5ea8272053a4e83a66e8e44cb20eb97202feef7104a"
        ),
        .binaryTarget(
            name: "bigo_ads_new_max_adapter",
            url: "https://static-fed-oss.adsbigo.com/bigoads-framework/bigo_ads_new_max_adapter_6.1.0.0_49.zip",
            checksum: "2c4864cc1d1b3a024b7c805346f92e8b6e913e74f27a6b1cb1f897ea6380771c"
        ),
    ]
)

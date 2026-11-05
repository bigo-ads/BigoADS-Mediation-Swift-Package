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
            exact: "6.2.0"
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
            url: "https://static-fed-oss.adsbigo.com/bigoads-framework/bigo_ads_admob_adapter_6.2.0.0_53.zip",
            checksum: "2a7444a8c7805bfe4c3751a7e5920bdbf162f13b97accdb8bad6b67bda2e8531"
        ),
        .binaryTarget(
            name: "bigo_ads_ironsource_adapter",
            url: "https://static-fed-oss.adsbigo.com/bigoads-framework/bigo-ads-ironsource-adapter_6.2.0.0_53.zip",
            checksum: "bb339820d5be2d34018658b9b4a4a967bb2b38608f4d6c37efb7c866ac6a473b"
        ),
        .binaryTarget(
            name: "bigo_ads_max_adapter",
            url: "https://static-fed-oss.adsbigo.com/bigoads-framework/bigo_ads_max_adapter_6.2.0.0_53.zip",
            checksum: "c377e45d2d4c602b27c5ddf072a39ee7e7dda18c53a79c5c40789465341be14a"
        ),
        .binaryTarget(
            name: "bigo_ads_new_max_adapter",
            url: "https://static-fed-oss.adsbigo.com/bigoads-framework/bigo_ads_new_max_adapter_6.2.0.0_53.zip",
            checksum: "ae93b656107d157fd110d4cce33eeaeaa00f12afe0efdeede360117db26a1e62"
        ),
    ]
)

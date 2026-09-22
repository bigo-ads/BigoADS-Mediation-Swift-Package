# BigoADS Mediation Swift Package

Swift Package Manager distribution for Bigo Ads mediation adapters.

## Requirements

- iOS 13.0 or later
- BigoADS 6.1.0
- Xcode 14.0 or later

## Installation

Add this package URL in Xcode:

```text
https://github.com/bigo-ads/BigoADS-Mediation-Swift-Package.git
```

Select only the adapter product required by the app:

| Mediation platform | Product | Mediation SDK version |
| --- | --- | --- |
| Google AdMob | `BigoADSAdMobAdapter` | 12.14.0 |
| Unity LevelPlay / ironSource | `BigoADSIronSourceAdapter` | 8.3.0 |
| AppLovin MAX | `BigoADSMaxAdapter` | 13.1.0 |
| AppLovin MAX (new adapter) | `BigoADSNewMaxAdapter` | 13.1.0 |

The products are independent. Selecting one adapter does not link the other
adapter products into the application.

Add exactly one BigoADS core package at version 6.1.0 to the same application:

- Standard SDK: `https://github.com/bigo-ads/BigoADS-Swift-Package.git`
- Spec SDK: `https://github.com/bigo-ads/BigoADS-Spec-Swift-Package.git`

Do not add both BigoADS core packages to one target. The same adapter product
supports either core package.

Add `-ObjC` to the application target's **Other Linker Flags** so mediation
adapter Objective-C categories and classes are retained by the static linker.

## Version mapping

Package version `6.1.0` contains BigoADS adapter version `6.1.0.0` and keeps
the mediation SDK versions listed above fixed.

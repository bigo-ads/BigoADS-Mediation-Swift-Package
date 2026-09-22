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

| Mediation platform | Product | Validated mediation SDK version |
| --- | --- | --- |
| Google AdMob | `BigoADSAdMobAdapter` | 12.14.0 |
| Unity LevelPlay / ironSource | `BigoADSIronSourceAdapter` | 8.3.0 |
| AppLovin MAX | `BigoADSMaxAdapter` | 13.1.0 |
| AppLovin MAX (new adapter) | `BigoADSNewMaxAdapter` | 13.1.0 |

The products are independent. Selecting one product does not link the other
adapter products into the application.

Each product has an exact dependency on BigoADS 6.1.0 from
`https://github.com/bigo-ads/BigoADS-Swift-Package.git`.

For BigoADS_spec, use
`https://github.com/bigo-ads/BigoADS-Spec-Mediation-Swift-Package.git` instead.

The application must also add its own mediation SDK matching the selected
adapter. This package does not download or change Google Mobile Ads, LevelPlay,
or AppLovin SDK versions.

Add `-ObjC` to the application target's **Other Linker Flags** so mediation
adapter Objective-C categories and classes are retained by the static linker.

## Version mapping

Package version `6.1.0` contains BigoADS adapter version `6.1.0.0` and keeps
the mediation SDK versions listed above fixed.

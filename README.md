# iPostMap Services SDK
[![ipostmap](https://img.shields.io/badge/ipostmap-services-orange)](https://ipostmap.vn/)
[![platform](https://img.shields.io/cocoapods/p/iPostMapServices)](https://ipostmap.vn/)

> iPostMap Services SDK brings the [iPostMap API Services](https://api.ipostmap.vn/sdk/docs/index.html) for your iOS Application

## Requirements

- iOS 12.0 or later
- Xcode 12 or later
- Services Access Key, get at [iPostMap developer page](https://map.ipostmap.vn/developer/key)

## Installation

### Swift Package Manager

#### In Xcode

Choose **File > Add Package Dependencies** and enter: 

```
https://github.com/map4d/ipostmap-services-ios-sdk.git
```

Select version **1.1.0** or later and add the `iPostMapServices` product to your application target

#### For a Swift package

Add the repository to `dependencies` in `Package.swift`:

```swift
.package(
    url: "https://github.com/map4d/ipostmap-services-ios-sdk.git",
    from: "1.1.0"
)
```

Then add the product to your target's `dependencies`:

```swift
.product(name: "iPostMapServices", package: "ipostmap-services-ios-sdk")
```

### CocoaPods

Update your cocoapods local repo

```shell
pod repo update
```

Add to Podfile

```shell
pod 'iPostMapServices'
```

## Provide access key

Edit `Info.plist` and add `Map4dServicesAccessKey`.  
Get services access key at [iPostMap developer page](https://map.ipostmap.vn/developer/key)

```xml
<key>Map4dServicesAccessKey</key>
<string>YOUR_SERVICES_ACCESS_KEY</string>
```

## Example

Search with text

```swift
let params = MFTextSearchParams(text: "Hà Nội")
let service = MFPlacesService()
service.searchText(with: params) { results, error in
  if let error = error {
    print("Error: \(error.message)")
    return
  }
  guard let places = results else { return }

  for place in places {
    print("Name: \(place.name)")
    print("Address: \(place.address)")
  }
}
```

-------

Copyright (c) 2016-2026 VNPost and IOTLink. All Rights Reserved.

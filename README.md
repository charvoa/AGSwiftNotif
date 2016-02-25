# AGSwiftNotif

[![CI Status](http://img.shields.io/travis/antoinegarcia/AGSwiftNotif.svg?style=flat)](https://travis-ci.org/antoinegarcia/AGSwiftNotif)
[![Version](https://img.shields.io/cocoapods/v/AGSwiftNotif.svg?style=flat)](http://cocoapods.org/pods/AGSwiftNotif)
[![License](https://img.shields.io/cocoapods/l/AGSwiftNotif.svg?style=flat)](http://cocoapods.org/pods/AGSwiftNotif)
[![Platform](https://img.shields.io/cocoapods/p/AGSwiftNotif.svg?style=flat)](http://cocoapods.org/pods/AGSwiftNotif)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

AGSwiftNotif is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "AGSwiftNotif"
```

## Usage

### Post a notification

```swift
import AGSwiftNotif

let notification = AGSwiftNotif()
notification.post("test")
```

### Register for a notification

```swift
notification.registerObserver("test"){(notification:NSNotification!)->Void in
  // RECEIVE NOTIFICATION
}
}
```

### Register for multiple notification

```swift
notification.registerObserver(["test","notifcation"]){(notification:NSNotification!)->Void in
  //CALL WHEN test or notification is posted
}
}
```
## Author

antoinegarcia, antoine.garcia@epitech.eu

## License

AGSwiftNotif is available under the MIT license. See the LICENSE file for more info.

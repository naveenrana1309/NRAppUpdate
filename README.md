

# NRAppUpdate

[![Version](https://img.shields.io/cocoapods/v/NRAppUpdate.svg?style=flat)](http://cocoapods.org/pods/NRAppUpdate)
[![License](https://img.shields.io/cocoapods/l/NRAppUpdate.svg?style=flat)](http://cocoapods.org/pods/NRAppUpdate)
[![Platform](https://img.shields.io/cocoapods/p/NRAppUpdate.svg?style=flat)](http://cocoapods.org/pods/NRAppUpdate)
![ScreenShot](https://cdn.rawgit.com/naveenrana1309/NRAppUpdate/master/Example/sample.png "Screeshot")




## Introduction

'NRAppUpdate enables the app to detect whether the new version of the app is available on itunes. For ex: During the launch of the app, it checks for update and shows the update prompt accordingly.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
Xcode 9+ , Swift 4 , iOS 9 and above

## Installation

NRAppUpdate is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "NRAppUpdate"
```

## Usage

```
override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view, typically from a nib.
NRAppUpdate.checkUpdate(for: "---YOUR APP ITUNES ID---")

//Your app id--  Just check the itunes url of your app "https://itunes.apple.com/in/app/myapp/id284882915?mt=8"  and here is your app itunes id 284882915 

}
```

## Contributing

Contributions are always welcome! (:

1. Fork it ( http://github.com/naveenrana1309/NRAppUpdate/fork )
2. Create your feature branch ('git checkout -b my-new-feature')
3. Commit your changes ('git commit -am 'Add some feature')
4. Push to the branch ('git push origin my-new-feature')
5. Create new Pull Request

## Compatibility

Xcode 9+ , Swift 4 , iOS 10 and above

## Author

Naveen Rana. [See Profile](https://www.linkedin.com/in/naveen-rana-9a371a40)

Email:
naveenrana1309@gmail.com.

Check out [Facebook Profile](https://www.facebook.com/naveen.rana.146) for detail.

## License

NRAppUpdate is available under the MIT license. See the LICENSE file for more info.


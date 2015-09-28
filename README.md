# SoulissApp for ios
An iOS app for Arduino based Smart Home and IoT, **the app is in it's early stages**.

![SoulissApp](http://i.imgur.com/xgVlkkn.png?1)



## Overview
The app is written in Swift 2.0. Xcode: Version 7.0. Platform Target: iOS 8.0.

## Getting Started

- Clone the repository   

   ```
   git clone git@github.com:souliss/soulissappios.git
  ```
  
- Install CocoaPods

  ```
  sudo gem install cocoapods
  ```
  
- Install the dependencies

  ```
  pod install
  ```
- Make sure to always open the Xcode workspace instead of the project file when building your project

  ```
  open soulissappios.xcworkspace
  ```
  
## Project Structure
The project follows the best practices of developing an iOS project.
5 Main Groups are present in the project:

1. Models
   Describes Nodes and [Typicals](https://github.com/souliss/souliss/wiki/Typicals) abstracting Souliss hardware layers. A souliss deployment is made of N nodes, each containing a list of devices (called typicals at low level). The model is exactly the same of [SoulissApp](https://github.com/souliss/soulissapp/tree/master/SoulissApp/src/main/java/it/angelic/soulissclient/model)
2. Net
3. Helpers
4. Stores
5. Controllers
6. Views


## Libraries    

- [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON): The better way to deal with JSON data in Swift.
- [CocoaAsyncSocket](https://github.com/robbiehanson/CocoaAsyncSocket): Asynchronous socket networking library for Mac and iOS.


## License
SoulissApp for iOS is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License.](http://creativecommons.org/licenses/by-sa/4.0/)
Based on [http://souliss.github.io.](http://souliss.github.io)

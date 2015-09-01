# SoulissApp for ios
An iOS app for Arduino based Smart Home and IoT, **the app is in it's early stages**.

![SoulissApp](http://i.imgur.com/u3LADcb.png?1)



## Overview
The app is written in Swift 1.2. Xcode: Version 6.4. Platform Target: iOS 8.0.

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
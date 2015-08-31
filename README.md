# SoulissApp for ios
An iOS app Arduino based Smart Home and IoT



## Overview
The app is written in Swift 1.2. Platform Target: iOS 8.0. The project tries to avoid any objective-c related libraries as a convention of pure Swift project.

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
2. Helpers
3. Stores
4. Controllers
5. Views


## Libraries    

- [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON): The better way to deal with JSON data in Swift.

## License
SoulissApp for iOS is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License.](http://creativecommons.org/licenses/by-sa/4.0/)
Based on [http://souliss.github.io.](http://souliss.github.io)
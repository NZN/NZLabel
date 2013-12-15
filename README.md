#NZLabel

UILabel with multiple fonts and colors.

<p align="center">
  <img src="http://s27.postimg.org/rdyv818oj/NZLabel.jpg" alt="NZLabel" title="NZLabel" />
</p>

[![Build Status](https://api.travis-ci.org/NZN/NZLabel.png)](https://api.travis-ci.org/NZN/NZLabel.png)

## Requirements

NZLabel works on iOS 5.0+ version and is compatible with ARC projects. It depends on the following Apple frameworks, which should already be included with most Xcode templates:

* Foundation.framework
* UIKit.framework

You will need LLVM 3.0 or later in order to build NZLabel.

## Adding NZLabel to your project

### Cocoapods

[CocoaPods](http://cocoapods.org) is the recommended way to add NZLabel to your project.

* Add a pod entry for NZLabel to your Podfile `pod 'NZLabel', '~> 0.0.1'`
* Install the pod(s) by running `pod install`.

### Source files

Alternatively you can directly add source files to your project.

1. Download the [latest code version](https://github.com/NZN/NZLabel/archive/master.zip) or add the repository as a git submodule to your git-tracked project.
2. Open your project in Xcode, then drag and drop all files at `NZLabel` folder onto your project (use the "Product Navigator view"). Make sure to select Copy items when asked if you extracted the code archive outside of your project.

## Usage

```objective-c
#import "NZLabel.h"
...
UIFont *boldFont = [UIFont fontWithName:@"Helvetica-Bold" size:17];
UIColor *blackColor = [UIColor blackColor];
NSString *loren = @"Lorem";
NSString *ipsum = @"ipsum";
    
[self.labelBlack setBoldFontToString:loren];
    
[self.labelBlue setFontColor:blackColor string:ipsum];
    
[self.labelGreen setFont:boldFont string:ipsum];
[self.labelGreen setFontColor:blackColor string:ipsum];
```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each NZLabel release can be found on the [wiki](https://github.com/NZN/NZLabel/wiki/Change-log).
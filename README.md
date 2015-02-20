# JLNRGravityImageView

## What does it do?

`JLNRGravityImageView` is a lightweight `UIImageView` subclass that pins image edges to view edges in `UIViewContentModeAspectFill` mode ([not in `AspectFit` mode, though](https://github.com/jlnr/JLNRGravityImageView/issues/2)).

This is useful, for example, if you want to have a photo fill an area on the screen, but you do not want to clip off the head of a person or a logo that is placed near the top of the image. Simply set `alignTop` to `YES` and *gravity* will pull the image up as far as possible.

Its interface is compatible with [UIImageViewAligned](https://github.com/reydanro/UIImageViewAligned) (four properties `alignTop`, `alignBottom`, `alignLeft`, `alignRight`), and can be configured in Interface Builder thanks to [`IBInspectable`](http://nshipster.com/ibinspectable-ibdesignable/).

## How is it implemented? How does it differ from UIImageViewAligned?

Just like [`UIImageViewAligned`](https://github.com/reydanro/UIImageViewAligned), this is a `UIImageView` subclass so that existing categories work. Apart from setting the Custom Class, no changes to XIBs and storyboards are required.

Unlike `UIImageViewAligned`, `JLNRGravityImageView` does not use nested views at all. This prevents issues where `UIImageView` keeps resetting the image property on the outer `UIImageView`, showing two images instead of one.

Instead, `JLNRGravityImageView` sets the `layer.contentsRect` property to a rectangle that is larger than 1x1. This lets us influence how `UIImageView` (actually `CALayer`) centres the image.

(One other approach that I have tried was to use a content mode like `Top`, `Left` etc. and scale the image using `ìmageView.contentScaleFactor` or `imageView.transform`, however the results were too inconsistent.)

## Requirements

`JLNRGravityImageView` should work on all versions of iOS.

## Installation

You can simply copy the two files in `Classes` into your project, but the easiest way is to use [CocoaPods](http://cocoapods.org).

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like JLNRGravityImageView in your projects. See the ["Getting Started" guide for more information](https://github.com/AFNetworking/AFNetworking/wiki/Getting-Started-with-AFNetworking).

#### Podfile

```ruby
platform :ios, '7.0'
pod "JLNRGravityImageView", :git => "https://github.com/jlnr/JLNRGravityImageView"
```

## License

`JLNRGravityImageView` is MIT-licensed.

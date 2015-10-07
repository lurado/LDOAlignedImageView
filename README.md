# LDOAlignedImageView

## What does it do?

`LDOAlignedImageView` is a lightweight subclass of `UIImageView` that aligns image edges to view edges in `UIViewContentModeAspectFill` mode ([not in `AspectFit` mode, though](https://github.com/lurado/LDOAlignedImageView/issues/2)).

This is useful, for example, if you want to have a photo fill an area on the screen, but you do not want to clip off the head of a person or a logo that is placed near the top of the image. Simply set `alignTop` to `YES`.

Its interface is compatible with [UIImageViewAligned](https://github.com/reydanro/UIImageViewAligned) (four properties `alignTop`, `alignBottom`, `alignLeft`, `alignRight`), and can be configured in Interface Builder thanks to [`IBInspectable`](http://nshipster.com/ibinspectable-ibdesignable/).

## How is it implemented? How does it differ from UIImageViewAligned?

Just like [`UIImageViewAligned`](https://github.com/reydanro/UIImageViewAligned), this is a `UIImageView` subclass so that existing categories work. Apart from setting the Custom Class, no changes to XIBs and storyboards are required.

Unlike `UIImageViewAligned`, `LDOAlignedImageView` does not use nested views at all. This prevents issues where `UIImageView` keeps resetting the image property on the outer `UIImageView`, showing two images instead of one.

Instead, `LDOAlignedImageView` sets the `layer.contentsRect` property to a rectangle that is larger than 1.0 x 1.0. This lets us influence how `UIImageView` (actually `CALayer`) centres the image.

## Requirements

`LDOAlignedImageView` should work on all versions of iOS.

## Installation

You can simply copy the two files in `Classes` into your project, but the easiest way is to use [CocoaPods](http://cocoapods.org).

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like LDOAlignedImageView in your projects.

#### Podfile

```ruby
platform :ios, "7.0"

pod "LDOAlignedImageView", :git => "https://github.com/lurado/LDOAlignedImageView"
```

## License

`LDOAlignedImageView` is released under the [MIT License](http://www.opensource.org/licenses/MIT).

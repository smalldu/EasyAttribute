# EasyAtrribute

[![CI Status](http://img.shields.io/travis/smalldu/EasyAtrribute.svg?style=flat)](https://travis-ci.org/smalldu/EasyAtrribute)
[![Version](https://img.shields.io/cocoapods/v/EasyAtrribute.svg?style=flat)](http://cocoapods.org/pods/EasyAtrribute)
[![License](https://img.shields.io/cocoapods/l/EasyAtrribute.svg?style=flat)](http://cocoapods.org/pods/EasyAtrribute)
[![Platform](https://img.shields.io/cocoapods/p/EasyAtrribute.svg?style=flat)](http://cocoapods.org/pods/EasyAtrribute)

## 目前支持的功能

- 字体
- 文字颜色
- 背景色
- 下划线
- 下划线颜色
- 行间距
- 文字间距
- 描边颜色
- 描边宽度
- 中划线
- 中划线颜色
- 设置图片

以上基本可以满足日常开发需求。

## Example

![demo](https://github.com/smalldu/EasyAtrribute/blob/master/attribute.jpg)

以上为示例图片

非常方便的链式调用

```swift
label1.attributedText = "属性字"
      .attribute()
      .fontSize(18)
      .foreColor(UIColor.blue)
      .underLine(.styleSingle)
      .underLineColor(UIColor.black)
      +
      " 测试一下"
        .attribute()
        .font(UIFont.boldSystemFont(ofSize: 20))
        .foreColor(UIColor.red)
        .underLine(.styleDouble)
        .underLineColor(UIColor.blue)
      +
      " ￥".attribute()
        .font(UIFont.boldSystemFont(ofSize: 23))
        .foreColor(UIColor.black)
      +
      " 2000"
        .attribute()
        .fontSize(19)
        .foreColor(UIColor.purple)
        .backgroundColor(UIColor.lightGray)
        .fontSpace(3.5)
      +
      " 描边文字"
        .attribute()
        .fontSize(19)
        .strokeColor(UIColor.blue)
        .strokeWidth(3)
      +
      " 中划线 "
        .attribute()
        .fontSize(17)
        .strike(2)
        .strikeColor(UIColor.darkGray)
      +
      "带图片提示的文本"
        .attribute()
        .fontSize(15).foreColor(UIColor.lightGray)
        .picture( #imageLiteral(resourceName: "warning") , bounds: CGRect(x: 0, y: 0, width: 13, height: 13), index: 0)
```

## Requirements

`Xcode 9` 、`Swift 4` 、 `iOS 8`

## Installation

EasyAtrribute is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'EasyAtrribute'
```

## Author

smalldu, 363958265@qq.com

## License

EasyAtrribute is available under the MIT license. See the LICENSE file for more info.

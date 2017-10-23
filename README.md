# EasyAtrribute

[![CI Status](http://img.shields.io/travis/smalldu/EasyAtrribute.svg?style=flat)](https://travis-ci.org/smalldu/EasyAtrribute)
[![Version](https://img.shields.io/cocoapods/v/EasyAtrribute.svg?style=flat)](http://cocoapods.org/pods/EasyAtrribute)
[![License](https://img.shields.io/cocoapods/l/EasyAtrribute.svg?style=flat)](http://cocoapods.org/pods/EasyAtrribute)
[![Platform](https://img.shields.io/cocoapods/p/EasyAtrribute.svg?style=flat)](http://cocoapods.org/pods/EasyAtrribute)

尴尬！ Attribute单词写错了~ 不改了。

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
        .picture( UIImage(named: "warning"), bounds: CGRect(x: 0, y: 0, width: 13, height: 13), index: 0)
```


通常也会有一些属性文本需要点击的时候，并非连接或者@someone，就普通的属性文本，这里也提供了支持
同样采用链式调用的方式

用到`TextKit`所以使用`TextView`比较方便

![示例图](https://github.com/smalldu/EasyAtrribute/blob/master/sxz.gif)
以上为示例图

>记得先remove。

```swift
textView
      .removeAllAttribute()
      .appendAttributedText("温馨提示，谨防诈骗，跟您对话的可能是个骗子！！！ "
        .attribute()
        .foreColor(UIColor.gray)
        .fontSize(15)
        .toEz())
      .appendAttributedText(" 拉黑 ".attribute()
        .foreColor(UIColor.blue)
        .font(UIFont.boldSystemFont(ofSize: 17))
        .toEz()
        .addAction{
          print("------这里是拉黑系统---------")
      })
      .appendAttributedText(" 举报 ".attribute()
        .foreColor(UIColor.blue)
        .font(UIFont.boldSystemFont(ofSize: 17))
        .toEz()
        .addAction{
          print("------这里是举报系统---------")
      })
```

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
- 使用EZTextView 支持属性文本点击事件处理


以上基本可以满足日常开发需求。


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

[EasyAttribute 介绍](http://www.jianshu.com/p/99855bba3d0e)

## License

EasyAtrribute is available under the MIT license. See the LICENSE file for more info.

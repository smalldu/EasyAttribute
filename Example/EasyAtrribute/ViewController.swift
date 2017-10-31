//
//  ViewController.swift
//  EasyAtrribute
//
//  Created by smalldu on 10/23/2017.
//  Copyright (c) 2017 smalldu. All rights reserved.
//

import UIKit
import EasyAtrribute

class ViewController: UIViewController {
  
  @IBOutlet weak var label1: UILabel!
  @IBOutlet weak var textView: EZTextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    textView.isEditable = false
    textView.isScrollEnabled = false
    
    textView
      .removeAllAttribute()
      .appendAttributedText("温馨提示，谨防诈骗，跟您对话的可能是个骗子！！！ "
        .attribute()
        .color(UIColor.gray)
        .fontSize(15)
        .toEz())
      .appendAttributedText(" 拉黑 ".attribute()
        .color(UIColor.blue)
        .ez_font(UIFont.boldSystemFont(ofSize: 17))
        .toEz()
        .addAction{
          print("------这里是拉黑系统---------")
      })
      .appendAttributedText(" 举报 ".attribute()
        .color(UIColor.blue)
        .ez_font(UIFont.boldSystemFont(ofSize: 17))
        .toEz()
        .addAction{
          print("------这里是举报系统---------")
      })
    
    
    
//    label1.attributedText = "属性字"
//      .attribute()
//      .fontSize(18)
//      .color(UIColor.blue)
//      .ez_underLine(.styleSingle)
//      .ez_underLineColor(UIColor.black)
//      +
//      (
//      " 测试一下"
//        .attribute()
//        .ez_font(UIFont.boldSystemFont(ofSize: 20))
//        .color(UIColor.red)
//        .ez_underLine(.styleDouble)
//        .ez_underLineColor(UIColor.blue)
//      +
//      " ￥".attribute()
//        .font(UIFont.boldSystemFont(ofSize: 23))
//        .color(UIColor.black)
//      ).lineSpace(5)
//      +
//      " 2000"
//        .attribute()
//        .fontSize(19)
//        .color(UIColor.purple)
//        .backgroundColor(UIColor.lightGray)
//        .fontSpace(3.5)
//      +
//      " 描边文字"
//        .attribute()
//        .fontSize(19)
//        .strokeColor(UIColor.blue)
//        .strokeWidth(3)
//      +
//      " 中划线 "
//        .attribute()
//        .fontSize(17)
//        .strike(2)
//        .strikeColor(UIColor.darkGray)
//      +
//      "带图片提示的文本"
//        .attribute()
//        .fontSize(15).foreColor(UIColor.lightGray)
//        .picture( #imageLiteral(resourceName: "warning") , bounds: CGRect(x: 0, y: 0, width: 13, height: 13), index: 0)
  }
  
}


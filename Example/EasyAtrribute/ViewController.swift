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
  
  override func viewDidLoad() {
    super.viewDidLoad()
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
  }
  
}


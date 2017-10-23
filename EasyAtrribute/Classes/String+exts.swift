//
//  String+exts.swift
//  EasyTextor
//
//  Created by duzhe on 2017/10/23.
//  Copyright © 2017年 duzhe. All rights reserved.
//

import UIKit

public extension String {
  public func attribute()->NSMutableAttributedString{
    return NSMutableAttributedString(string: self)
  }
}


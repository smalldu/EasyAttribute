//
//  EZTextView.swift
//  EasyAtrribute
//
//  Created by duzhe on 2017/10/23.
//

import UIKit

public class EZAttributeString {
  
  public var attributeText: NSMutableAttributedString
  public init(attributeText: NSMutableAttributedString) {
    self.attributeText = attributeText
  }
  
  public var action: (()->())?
  public var range: NSRange?
  public var location: Int{
    return range?.location ?? 0
  }
  public var length: Int {
    return range?.length ?? 0
  }
  public func addAction(_ action:(()->())?) -> EZAttributeString{
    self.action = action
    return self
  }
  public func rangeContains(_ index: Int)->Bool{
    if index >= self.location && index <= self.location+self.length {
      return true
    }
    return false
  }
}

public class EZTextView: UITextView {
  
  public var selectedBackgroundColor: UIColor?
  private var storageTexts: [EZAttributeString] = []
  private var selectedAttribute: EZAttributeString?
  private var originalAttributeText: NSAttributedString?
  
  public func removeAllAttribute()->EZTextView{
    text = ""
    return self
  }
  
  @discardableResult
  public func appendAttributedText(_ attribute: EZAttributeString) -> EZTextView{
    storageTexts.append(attribute)
    
    let location = attributedText?.length ?? 0
    attribute.range = NSMakeRange(location, attribute.attributeText.length)
    if let at = attributedText , at.length > 0 {
      attributedText = NSMutableAttributedString(attributedString: at) + attribute.attributeText
    }else{
      attributedText = attribute.attributeText
    }
    self.originalAttributeText = attributedText
    return self
  }
  
  private func indexForLocation(_ loc: CGPoint)->Int{
    var location = loc
    location.x -= self.textContainerInset.left
    location.y -= self.textContainerInset.top
    let index = layoutManager.characterIndex(for: location , in: textContainer , fractionOfDistanceBetweenInsertionPoints: nil)
    return index
  }
  override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    guard let location = touches.first?.location(in: self) else {
      return
    }
    let index = indexForLocation(location)
//    print("\(location) , \(index)")
    let realStorageTexts = storageTexts.filter{ $0.action != nil }
    for item in realStorageTexts {
      if item.rangeContains(index) {
        self.selectedAttribute = item
        if let range = item.range {
          let attr = NSMutableAttributedString(attributedString: self.attributedText)
          attr.addAttribute(.backgroundColor, value:self.selectedBackgroundColor ?? UIColor.lightGray, range: range)
          self.attributedText = attr
        }
      }
    }
  }
  
  override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    guard let location = touches.first?.location(in: self) else {
      return
    }
    let index = indexForLocation(location)
    if let selectedAttribute = self.selectedAttribute {
      if !selectedAttribute.rangeContains(index) {
        cancel()
      }
    }
  }
  
  override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    finish()
  }
  
  override public func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    cancel()
  }
  
  func finish(){
    if let ort = self.originalAttributeText {
      self.attributedText = ort
      self.selectedAttribute?.action?()
      self.selectedAttribute = nil
    }
  }
  
  func cancel(){
    if let ort = self.originalAttributeText {
      self.attributedText = ort
      self.selectedAttribute = nil
    }
  }
  
}


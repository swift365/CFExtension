//
//  UIView.swift
//  CFExtension
//
//  Created by 衡成飞 on 11/18/16.
//  Copyright © 2016年 chengfeisoft. All rights reserved.
//

import UIKit

public extension UIView {
    class func loadFromNibNamed(nibName:String,bundle : Bundle? = nil) -> UIView? {
        return UINib(nibName: nibName, bundle: bundle).instantiate(withOwner: nil, options: nil)[0] as? UIView
    }
    
    public var width:CGFloat! {
        get {
            return self.frame.width
        }
        set(newValue){
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    
    public var height:CGFloat! {
        get {
            return self.frame.height
        }
        set(newValue){
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    
    public var x:CGFloat! {
        get {
            return self.frame.origin.x
        }
        set(newValue){
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    public var y:CGFloat! {
        get {
            return self.frame.origin.y
        }
        set(newValue){
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
}

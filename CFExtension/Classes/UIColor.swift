//
//  UIColor.swift
//  CFExtension
//
//  Created by 衡成飞 on 11/18/16.
//  Copyright (c) 2016年 chengfei.heng. All rights reserved.
//

import UIKit

public extension UIColor {
    
   public convenience init(red: Int, green: Int, blue: Int, al: CGFloat) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: al)
    }
    
    /**
     返回UIColor对象
     
     - parameter netHex: 16进制
     - parameter alpha:  透明度
     
     - returns: UIColor
     */
    public convenience init(netHex:Int, alpha: CGFloat) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff, al: alpha)
    }
}

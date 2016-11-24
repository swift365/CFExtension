//
//  String.swift
//  CFExtension
//
//  Created by 衡成飞 on 11/18/16.
//  Copyright © 2016年 chengfei.heng. All rights reserved.
//

import UIKit

public extension String {
    /**
     计算height
     
     - parameter font:  字体
     - parameter width: 约束的宽度
     
     - returns: size
     */
    func sizeWithFont(font:UIFont!,constrainedToWidth width: CGFloat) -> CGSize {
        return NSString(string: self).boundingRect(with: CGSize(width: width, height: 9999), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSFontAttributeName:font], context: nil).size
    }
    
    /**
     计算width
     
     - parameter font:   字体
     - parameter height: 约束的高度
     
     - returns: size
     */
    func sizeWithFont(font:UIFont!,constrainedToHeight height: CGFloat) -> CGSize {
        return NSString(string: self).boundingRect(with: CGSize(width: 9999, height: height), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSFontAttributeName:font], context: nil).size
    }
    
    /**
     删除字符串前后空格
     
     - returns: 处理后的结果
     */
    func trimSpacesBeforeAndAfter() -> String{
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    /**
     是否为数字
     **/
    func isNumber() -> Bool {
        let number = NSCharacterSet.decimalDigits.inverted
        
        if !self.isEmpty && self.rangeOfCharacter(from: number) == nil {
            return true
        }
        
        return false
    }
    
    
    /**
     处理时间字符串格式化
     例如: 2016-11-08 10:10:00 inputFormat: "yyyy-MM-dd HH:mm:ss"
           outFormat: 想要的格式  例如: "MM-dd" 则输出 11-08
     - returns: 处理后的结果
     */
    func dealTimeString(_ inputFormat:String,outFormat:String,timeString:String) -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.locale = Locale(identifier: "en_US")
        inputFormatter.dateFormat = inputFormat
        
        let inputDate = inputFormatter.date(from: timeString)
        let outputFormatter = DateFormatter()
        outputFormatter.locale = Locale.current
        outputFormatter.dateFormat = outFormat
        let dateString:String = outputFormatter.string(from: inputDate!)
        return dateString
    }
    
    func toDouble() -> Double {
        return (self as NSString).doubleValue
    }
}

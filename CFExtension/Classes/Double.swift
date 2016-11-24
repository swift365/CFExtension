//
//  Double.swift
//  CFExtension
//
//  Created by 衡成飞 on 11/18/16.
//  Copyright © 2016年 chengfeisoft. All rights reserved.
//

import UIKit

public extension Double {

    /**
      毫秒转化为日期
    */
    func toDate() -> NSDate {
        let d:TimeInterval = self/1000
        
        return NSDate(timeIntervalSince1970: d)
    }
    
    /// %.2f 不带科学计数
    func toStringWithFormat(format:String) -> String! {
        return NSString(format: format as NSString, self) as String
    }

    /// "###,##0.00"
    /// "0.00"
    /// 科学计数
    func toStringWithFormatSC(format:String) -> String! {
        let nf = NumberFormatter()
        nf.positiveFormat = format
        nf.locale = NSLocale.current
        let val = nf.string(from: NSNumber(value: self))
        
        return val
    }
        
}

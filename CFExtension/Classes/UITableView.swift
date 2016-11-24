//
//  UITableView.swift
//  CFExtension
//
//  Created by 衡成飞 on 11/18/16.
//  Copyright © 2016年 chengfei.heng. All rights reserved.
//
// http://stackoverflow.com/questions/3832474/uitableview-row-animation-duration-and-completion-callback

import UIKit

public extension UITableView {
    
    /**
     setEditing执行完后的回调
     
     - parameter editing:    是否编辑状态
     - parameter animated:   是否有动画效果
     - parameter completion: 回调处理
     */
    public func setEditing(editing: Bool, animated: Bool, completion:(() -> Void)?){
        CATransaction.begin()
        CATransaction.setCompletionBlock({ () -> Void in
            if completion != nil {
                completion!()
            }
        })
        self.setEditing(editing, animated: animated)
        
        CATransaction.commit()
    }
    
    /**
     moveRowAtIndexPath执行完后的回调
     
     - parameter indexPath:    当前位置
     - parameter newIndexPath: 要移动的位置
     - parameter completion:   回调处理
     */
   public  func moveRowAtIndexPath(indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath,completion:(() -> Void)?){
        CATransaction.begin()
        CATransaction.setCompletionBlock({ () -> Void in
            if completion != nil {
                completion!()
            }
        })

        self.moveRowAtIndexPath(indexPath: indexPath, toIndexPath: newIndexPath, completion: completion)
        CATransaction.commit()
    }
    
    public  func reloadSections(section: Int, animation:UITableViewRowAnimation,completion:(() -> Void)?){
        CATransaction.begin()
        CATransaction.setCompletionBlock({ () -> Void in
            if completion != nil {
                completion!()
            }
        })
        self.reloadSections(NSIndexSet(index:section) as IndexSet, with: animation)
        
        CATransaction.commit()
    }
}

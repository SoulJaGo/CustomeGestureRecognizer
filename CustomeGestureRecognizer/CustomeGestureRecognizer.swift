//
//  CustomeGestureRecognizer.swift
//  CustomeGestureRecognizer
//
//  Created by SoulJa on 16/5/7.
//  Copyright © 2016年 SoulJa. All rights reserved.
//

import UIKit
import UIKit.UIGestureRecognizerSubclass

class CustomeGestureRecognizer: UIGestureRecognizer {
    var leftTop = false
    var rightDown = false
    
    override init(target: AnyObject?, action: Selector) {
        super.init(target: target, action: action)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent) {
        
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent) {
        let myTouch = touches.first! as UITouch
        let myLocation = myTouch.locationInView(self.view)
        if myLocation.x < 10 && myLocation.y < 10 {
            leftTop = true
        }
        
        if((myLocation.x + 10 > self.view?.bounds.width) && (myLocation.y + 10 > self.view?.bounds.height)) {
            rightDown = true
        }
        
        if leftTop && rightDown {
            self.state = UIGestureRecognizerState.Ended
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent) {
        self.reset()
    }
    
    override func touchesCancelled(touches: Set<UITouch>, withEvent event: UIEvent) {
        return
    }
}

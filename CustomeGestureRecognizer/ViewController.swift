//
//  ViewController.swift
//  CustomeGestureRecognizer
//
//  Created by SoulJa on 16/5/7.
//  Copyright © 2016年 SoulJa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greenView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let customGestureRecognizer = CustomeGestureRecognizer(target: self, action: #selector(ViewController.handleCustomGesture(_:)))
        greenView.addGestureRecognizer(customGestureRecognizer)
    }
    
    func handleCustomGesture(sender:CustomeGestureRecognizer) {
        NSLog("滑动识别识别成功")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


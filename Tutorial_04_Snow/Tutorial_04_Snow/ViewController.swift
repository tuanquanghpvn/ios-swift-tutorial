//
//  ViewController.swift
//  Tutorial_04_Snow
//
//  Created by  on 3/2/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func btnShow(sender: UIButton) {
        let screenSize:CGRect = UIScreen.mainScreen().bounds
        
        for _ in 0...100 {
            let rdx:Int = Int(arc4random()) % Int(screenSize.width)
            let rdy:Int = Int(arc4random()) % Int(screenSize.height)
            let snow:UIImageView = UIImageView(frame: CGRectMake(CGFloat(rdx), CGFloat(rdy), 16, 16))
            snow.image = UIImage(named: "snow.png")
            self.view.addSubview(snow)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


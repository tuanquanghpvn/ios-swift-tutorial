//
//  ViewController.swift
//  Tutorial_08_ObjectFrame
//
//  Created by  on 3/3/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgMonkey: UIImageView!
    
    @IBAction func btnUp(sender: UIButton) {
        imgMonkey.frame.origin.y = imgMonkey.frame.origin.y - 2
    }
    
    @IBAction func btnDown(sender: UIButton) {
        imgMonkey.frame.origin.y = imgMonkey.frame.origin.y + 2
    }
    
    @IBAction func btnLeft(sender: UIButton) {
        imgMonkey.frame.origin.x = imgMonkey.frame.origin.x - 2
    }
    
    @IBAction func btnRight(sender: UIButton) {
        imgMonkey.frame.origin.x = imgMonkey.frame.origin.x + 2
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


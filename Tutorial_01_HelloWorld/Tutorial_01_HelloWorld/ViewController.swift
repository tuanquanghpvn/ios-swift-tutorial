//
//  ViewController.swift
//  Tutorial_01_HelloWorld
//
//  Created by  on 3/1/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblBindingData: UILabel!
    
    @IBAction func btnShowData(sender: UIButton) {
        lblBindingData.text = "Hello Viet Nam"
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


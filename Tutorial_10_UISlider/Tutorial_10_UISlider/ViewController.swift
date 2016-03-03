//
//  ViewController.swift
//  Tutorial_10_UISlider
//
//  Created by  on 3/3/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sliPercent: UISlider!
    
    @IBOutlet weak var lblData: UILabel!
    
    @IBAction func actPercent(sender: UISlider) {
        let v: Float = sliPercent.value
        lblData.text = String(Int(v))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sliPercent.minimumValue = 0
        sliPercent.maximumValue = 100
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


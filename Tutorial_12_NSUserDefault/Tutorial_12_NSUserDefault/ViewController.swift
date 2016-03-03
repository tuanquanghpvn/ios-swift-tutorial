//
//  ViewController.swift
//  Tutorial_12_NSUserDefault
//
//  Created by  on 3/3/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtData: UITextField!
    
    var infoViewController: NSUserDefaults!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        infoViewController.setObject(txtData.text, forKey: "data")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        infoViewController = NSUserDefaults.standardUserDefaults()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


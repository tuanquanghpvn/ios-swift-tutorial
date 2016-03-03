//
//  SecondViewController.swift
//  Tutorial_12_NSUserDefault
//
//  Created by  on 3/3/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var lblShow: UILabel!
    
    @IBAction func actShowData(sender: UIButton) {
        let rs: String = String(infoViewController.objectForKey("data"))
        lblShow.text = rs
    }
    
    var infoViewController: NSUserDefaults!

    override func viewDidLoad() {
        super.viewDidLoad()
        infoViewController = NSUserDefaults.standardUserDefaults()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  DetailViewController.swift
//  Tutorial_14_MobileListUITableView
//
//  Created by  on 3/3/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var infoViewController: NSUserDefaults!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoViewController = NSUserDefaults()
        
        let ds: Int = infoViewController.integerForKey("selected")
        
        print(String(ds))
        

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

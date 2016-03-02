//
//  ViewController.swift
//  Tutorial_05_NSTimer
//
//  Created by  on 3/2/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: NSTimer!
    var watchTimer: NSTimer!
    
    @IBOutlet weak var lblShow: UILabel!
    
    @IBAction func btnStart(sender: UIButton) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("schedulerFun"), userInfo: nil, repeats: true)
    }
    
    @IBAction func btnStop(sender: UIButton) {
        timer.invalidate()
    }
    
    func schedulerFun() {
        let rs: String! = lblShow.text
        if rs != nil {
            let trs: Int! = Int(rs)! + 1
            lblShow.text = String(trs)
        }
    }
    
    
    @IBOutlet weak var lblWatch: UILabel!
    @IBAction func btnWatch(sender: UIButton) {
        watchTimer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("schedulerWatch"), userInfo: nil, repeats: true)
    }
    
    func schedulerWatch() {
        let watch: String = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .MediumStyle, timeStyle: .LongStyle)
        lblWatch.text = watch
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


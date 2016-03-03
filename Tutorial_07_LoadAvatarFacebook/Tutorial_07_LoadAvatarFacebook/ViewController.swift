//
//  ViewController.swift
//  Tutorial_07_LoadAvatarFacebook
//
//  Created by  on 3/2/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtInfo: UITextField!
    
    @IBOutlet weak var imgLoad: UIImageView!
    
    @IBAction func btnFacebookLoad(sender: UIButton) {
        let info = txtInfo.text!
        let src = "http://graph.facebook.com/" + String(info) + "/picture?type=large"
        loadImage(src)
    }
    
    @IBAction func btnYahooLoad(sender: UIButton) {
        let info = txtInfo.text!
        let src = "http://img.msg.yahoo.com/v1/displayImage/yahoo/" + String(info)
        loadImage(src)
    }
    
    func loadImage(src: String) {
        do {
            let url: NSURL = NSURL(string: src)!
            let dt: NSData = NSData(contentsOfURL: url)!
            try imgLoad.image = UIImage(data: dt)
        } catch {
            print("Error: ")
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


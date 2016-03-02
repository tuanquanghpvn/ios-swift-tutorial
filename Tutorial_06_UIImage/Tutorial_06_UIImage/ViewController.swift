//
//  ViewController.swift
//  Tutorial_06_UIImage
//
//  Created by  on 3/2/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgLoad: UIImageView!
    
    @IBAction func btnLocalImage(sender: UIButton) {
        imgLoad.image = UIImage(named: "love.png")
    }
    
    @IBAction func btnRemoteImage(sender: UIButton) {
        let url: NSURL = NSURL(string: "http://lifehacking.nl/wp-content/uploads/635901229056694012132699739_Love-vs-Logic.jpg")!
        let dt: NSData = NSData(contentsOfURL: url)!
        imgLoad.image = UIImage(data: dt)
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


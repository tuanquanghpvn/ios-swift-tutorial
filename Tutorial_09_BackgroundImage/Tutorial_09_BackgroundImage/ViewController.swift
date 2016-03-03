//
//  ViewController.swift
//  Tutorial_09_BackgroundImage
//
//  Created by  on 3/3/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var swtChangeImage: UISwitch!
    
    @IBAction func actChangeImage(sender: UISwitch) {
        let bg: UIImage
        if swtChangeImage.on {
            bg = UIImage(named: "1.jpg")!
        } else {
            bg = UIImage(named: "2.jpg")!
        }
        self.view.backgroundColor = UIColor(patternImage: bg)
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


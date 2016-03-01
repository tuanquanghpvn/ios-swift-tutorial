//
//  ViewController.swift
//  Tutorial_02_RegisterForm
//
//  Created by  on 3/1/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtFullname: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    @IBOutlet weak var txtvResult: UITextView!
    
    @IBAction func btnRegister(sender: UIButton) {
        let fullName:String = txtFullname.text!
        let email:String = txtEmail.text!
        let mobile:String = txtMobile.text!
        txtvResult.text = "Information Full Name: " + fullName + " Email: " + email + " Mobile: " + mobile
    }
    @IBAction func btnClear(sender: UIButton) {
        txtFullname.text = ""
        txtEmail.text = ""
        txtMobile.text = ""
        txtvResult.text = ""
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


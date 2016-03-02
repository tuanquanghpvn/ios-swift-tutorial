//
//  ViewController.swift
//  Tutorial_03_Caculator_Simple
//
//  Created by  on 3/2/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numFirst: Int!
    var numSecond: Int!
    var fun: String!
    
    @IBOutlet weak var txtInput: UITextField!
    
    
    @IBAction func btnAdd(sender: UIButton) {
        let rs:String = txtInput.text!
        numFirst = Int(rs)
        txtInput.text = ""
        
        fun = "+"
    }
    
    @IBAction func btnSub(sender: UIButton) {
        let rs:String = txtInput.text!
        numFirst = Int(rs)
        txtInput.text = ""
        
        fun = "-"
    }
    
    @IBAction func btnMul(sender: UIButton) {
        let rs:String = txtInput.text!
        numFirst = Int(rs)
        txtInput.text = ""
        
        fun = "*"
    }
    
    @IBAction func btnDiv(sender: UIButton) {
        let rs:String = txtInput.text!
        numFirst = Int(rs)
        txtInput.text = ""
        
        fun = "/"
    }
    
    @IBAction func btnEqual(sender: UIButton) {
        let rs:String = txtInput.text!
        numSecond = Int(rs)
        txtInput.text = ""
        
        switch fun {
        case "+":
            let v:Int = Int(numFirst) + Int(numSecond)
            txtInput.text = String(v)
        case "-":
            let v:Int = Int(numFirst) + Int(numSecond)
            txtInput.text = String(v)
        case "*":
            let v:Int = Int(numFirst) + Int(numSecond)
            txtInput.text = String(v)
        case "/":
            let v:Float = Float(numFirst) / Float(numSecond)
            txtInput.text = String(v)
        default:
            numFirst = 0
            numSecond = 0
            txtInput.text = ""
        }
    }
    
    @IBAction func btnClear(sender: UIButton) {
        txtInput.text = ""
        numFirst = 0
        numSecond = 0
        fun = ""
    }
    
    @IBAction func btn0(sender: UIButton) {
        var result:String = txtInput.text!
        result = result + "0"
        txtInput.text = result
    }
    
    @IBAction func btn1(sender: UIButton) {
        var result:String = txtInput.text!
        result = result + "1"
        txtInput.text = result
    }
    
    @IBAction func btn2(sender: UIButton) {
        var result:String = txtInput.text!
        result = result + "2"
        txtInput.text = result
    }
    
    @IBAction func btn3(sender: UIButton) {
        var result:String = txtInput.text!
        result = result + "3"
        txtInput.text = result
    }
    
    @IBAction func btn4(sender: UIButton) {
        var result:String = txtInput.text!
        result = result + "4"
        txtInput.text = result
    }
    
    @IBAction func btn5(sender: UIButton) {
        var result:String = txtInput.text!
        result = result + "5"
        txtInput.text = result
    }
    
    @IBAction func btn6(sender: UIButton) {
        var result:String = txtInput.text!
        result = result + "6"
        txtInput.text = result
    }
    
    @IBAction func btn7(sender: UIButton) {
        var result:String = txtInput.text!
        result = result + "7"
        txtInput.text = result
    }
    
    @IBAction func btn8(sender: UIButton) {
        var result:String = txtInput.text!
        result = result + "8"
        txtInput.text = result
    }
    
    @IBAction func btn9(sender: UIButton) {
        var result:String = txtInput.text!
        result = result + "9"
        txtInput.text = result
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


//
//  ViewController.swift
//  Tutorial_11_PickerView
//
//  Created by  on 3/3/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    @IBOutlet weak var lblShowFood: UILabel!
    
    var arrayFood: [String]!
    
    /* Func for Picker View */
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayFood.count
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 120
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayFood[row]
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let vImg: UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        vImg.image = UIImage(named: arrayFood[row])
        return vImg
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(arrayFood[row])
        lblShowFood.text = arrayFood[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        arrayFood = ["food1.jpg", "food2.jpg", "food3.jpg", "food4.jpg", "food5.jpg", "food6.jpg"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


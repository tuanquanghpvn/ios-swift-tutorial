//
//  ViewController.swift
//  Tutorial_15_CoreData
//
//  Created by  on 3/4/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet weak var txtFullname: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func btnSave(sender: UIButton) {
        // Create Managed Object
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext: NSManagedObjectContext = appDel.managedObjectContext
        
        let userEntity = NSEntityDescription.insertNewObjectForEntityForName("UserEntity", inManagedObjectContext: managedContext) as NSManagedObject
        
        userEntity.setValue(txtFullname.text, forKey: "fullname")
        userEntity.setValue(txtUsername.text, forKey: "username")
        userEntity.setValue(txtEmail.text, forKey: "email")
        userEntity.setValue(txtPassword.text, forKey: "password")
        
        do {
            try managedContext.save()
        } catch {
            print("There is some error")
        }
        
        clearTextField()
    }
    
    func clearTextField() {
        txtFullname.text = ""
        txtUsername.text = ""
        txtEmail.text = ""
        txtPassword.text = ""
    }
    
    @IBAction func btnCheck(sender: UIButton) {
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext: NSManagedObjectContext = appDel.managedObjectContext
        
        let fetchRequest = NSFetchRequest(entityName: "UserEntity")
        fetchRequest.returnsObjectsAsFaults = false
        
        do {
            let results = try managedContext.executeFetchRequest(fetchRequest)
            for result: AnyObject in results {
                print(result.valueForKey("fullname"))
            }
        } catch {
        
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


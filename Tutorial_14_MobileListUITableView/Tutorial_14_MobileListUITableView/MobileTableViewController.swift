//
//  MobileTableViewController.swift
//  Tutorial_14_MobileListUITableView
//
//  Created by  on 3/3/16.
//  Copyright © 2016 Tuan_Quang. All rights reserved.
//

import UIKit

class MobileTableViewController: UITableViewController {
    
    var arrayName: [String]!
    var arrayImage: [String]!
    var arrayPrice: [String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayName = ["Apple Iphone 6s", "Samsung Galaxy S7", "HTC One Max", "Galaxy Note 5", "Luminal 1500", "LG G5"]
        arrayImage = ["mobile1.jpg", "mobile2.jpg", "mobile3.jpg", "mobile4.jpg", "mobile5.jpg", "mobile6.jpg"]
        arrayPrice = ["16.000.000 VND", "15.000.000 VND", "8.000.000 VND", "18.000.000 VND", "12.000.000 VND", "16.000.000 VND"]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayName.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 120
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        // Configure the cell...
        
        let imgMobile: UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 90, height: 120))
        imgMobile.image = UIImage(named: arrayImage[indexPath.row])
        cell.addSubview(imgMobile)
        
        let lblNameMobile: UILabel = UILabel(frame: CGRect(x: 100, y: 10, width: 150, height: 20))
        lblNameMobile.text = arrayName[indexPath.row]
        cell.addSubview(lblNameMobile)
        
        let lblPriceMobile: UILabel = UILabel(frame: CGRect(x: 100, y: 40, width: 150, height: 20))
        lblPriceMobile.text = arrayPrice[indexPath.row]
        cell.addSubview(lblPriceMobile)
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

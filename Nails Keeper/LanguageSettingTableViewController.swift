//
//  LanguageSettingTableViewController.swift
//  Nails Keeper
//
//  Created by Uy Nguyen on 3/28/16.
//  Copyright © 2016 TIM NGUYEN. All rights reserved.
//

import UIKit

class LanguageSettingTableViewController: UITableViewController {

    @IBOutlet weak var english: UITableViewCell!
    
    @IBOutlet weak var vietnamese: UITableViewCell!
    
    
    @IBOutlet weak var navigationBar: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.title = "Laguage - Ngôn Ngữ"
        english.textLabel?.text = "English"
        vietnamese.textLabel?.text = "Tiếng Việt"
        
        //todo set checkmake
        let language = NSUserDefaults.standardUserDefaults().objectForKey("language")
        if(language != nil){
            if(language as! String == "english"){
                english.accessoryType = UITableViewCellAccessoryType.Checkmark
            }
            else{
                vietnamese.accessoryType = UITableViewCellAccessoryType.Checkmark
            }
        }

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row == 0){// english row
            //save language in permanent storage
            NSUserDefaults.standardUserDefaults().setObject("english", forKey: "language")
            english.accessoryType = UITableViewCellAccessoryType.Checkmark
            vietnamese.accessoryType = UITableViewCellAccessoryType.None
        
        }
        else{// vietnamese row
            //save language in permanent storage
            NSUserDefaults.standardUserDefaults().setObject("tiếng việt", forKey: "language")
            
            english.accessoryType = UITableViewCellAccessoryType.None
            vietnamese.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
/*
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/
/*
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }*/

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

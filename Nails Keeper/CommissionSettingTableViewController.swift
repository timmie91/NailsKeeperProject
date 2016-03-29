//
//  CommissionSettingTableViewController.swift
//  Nails Keeper
//
//  Created by Uy Nguyen on 3/28/16.
//  Copyright © 2016 TIM NGUYEN. All rights reserved.
//

import UIKit

class CommissionSettingTableViewController: UITableViewController {
    
    @IBOutlet weak var navigationBar: UINavigationItem!

    @IBOutlet weak var tenZero: UITableViewCell!
    
    @IBOutlet weak var nineOne: UITableViewCell!
    
    @IBOutlet weak var eightTwo: UITableViewCell!
    

    @IBOutlet weak var sevenThree: UITableViewCell!
    
    @IBOutlet weak var sixFour: UITableViewCell!
    
    @IBOutlet weak var fiveFive: UITableViewCell!
    
    @IBOutlet weak var FourSix: UITableViewCell!
    
    @IBOutlet weak var threeSeven: UITableViewCell!
   
    
    @IBOutlet weak var twoEight: UITableViewCell!
    
    @IBOutlet weak var oneNine: UITableViewCell!
    
    @IBOutlet weak var zeroTen: UITableViewCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        let language = NSUserDefaults.standardUserDefaults().objectForKey("language")
        
        //TODO SET VIETNAMESE LANGUAGE
        if(language != nil && language as! String == "tiếng việt"){
            navigationBar.title = "Chọn Chia Tỉ Lệ"
            tenZero.textLabel?.text = "thợ 10 - chủ 0 (nếu chủ tiệm)"
            nineOne.textLabel?.text = "thợ 9 - chủ 1"
            eightTwo.textLabel?.text = "thợ 8 - chủ 2"
            sevenThree.textLabel?.text = "thợ 7 - chủ 3"
            sixFour.textLabel?.text = "thợ 6 - chủ 4"
            fiveFive.textLabel?.text = "thợ 5 - chủ 5"
            FourSix.textLabel?.text = "thợ 4 - chủ 5"
            threeSeven.textLabel?.text = "thợ 3 - owner 7"
            twoEight.textLabel?.text = "thợ 2 - chủ 8"
            oneNine.textLabel?.text = "thợ 1 - chủ 9"
            zeroTen.textLabel?.text = "thợ 0 - chủ 10 (nếu làm không công)"
        }
        else{
            navigationBar.title = "Commission Percentage Setting"
            tenZero.textLabel?.text = "worker 10 - owner 0 (I'm owner)"
            nineOne.textLabel?.text = "worker 9 - owner 1"
            eightTwo.textLabel?.text = "worker 8 - owner 2"
            sevenThree.textLabel?.text = "worker 7 - owner 3"
            sixFour.textLabel?.text = "worker 6 - owner 4"
            fiveFive.textLabel?.text = "worker 5 - owrner 5"
            FourSix.textLabel?.text = "worker 4 - owner 5"
            threeSeven.textLabel?.text = "worker 3 - owner 7"
            twoEight.textLabel?.text = "worker 2 - owner 8"
            oneNine.textLabel?.text = "worker 1 - owner 9"
            zeroTen.textLabel?.text = "worker 0 - owner 10 (free worker)"
        }
        getCommissionPercentChecked();
        //sixFour.accessoryType = UITableViewCellAccessoryType.Checkmark
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    private func getCommissionPercentChecked() -> Void {
        
        var commissionPecent = NSUserDefaults.standardUserDefaults().objectForKey("CommissionPercent")
        if(commissionPecent != nil){
            var commissionDouble = commissionPecent as! Double
            if(commissionDouble == 1.0){
                tenZero.accessoryType = UITableViewCellAccessoryType.Checkmark
            }
            if(commissionDouble == 0.9){
                nineOne.accessoryType = UITableViewCellAccessoryType.Checkmark
            }
            if(commissionDouble == 0.8){
                eightTwo.accessoryType = UITableViewCellAccessoryType.Checkmark
            }
            if(commissionDouble == 0.7){
                sevenThree.accessoryType = UITableViewCellAccessoryType.Checkmark
            }
            if(commissionDouble == 0.6){
                sixFour.accessoryType = UITableViewCellAccessoryType.Checkmark
            }
            if(commissionDouble == 0.5){
                fiveFive.accessoryType = UITableViewCellAccessoryType.Checkmark
            }
            if(commissionDouble == 0.4){
                FourSix.accessoryType = UITableViewCellAccessoryType.Checkmark
            }
            if(commissionDouble == 0.3){
                threeSeven.accessoryType = UITableViewCellAccessoryType.Checkmark
            }
            if(commissionDouble == 0.2){
                twoEight.accessoryType = UITableViewCellAccessoryType.Checkmark
            }
            if(commissionDouble == 0.1){
                oneNine.accessoryType = UITableViewCellAccessoryType.Checkmark
            }
            if(commissionDouble == 0.0){
                zeroTen.accessoryType = UITableViewCellAccessoryType.Checkmark
            }
            
            
            //TODO MORE
        }
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row == 0){
            //save commissonPercentage in permenent storage
            NSUserDefaults.standardUserDefaults().setObject(1.0, forKey: "CommissionPercent")
                
            unCheckAll()
            tenZero.accessoryType = UITableViewCellAccessoryType.Checkmark
           
            
        }
        else if(indexPath.row == 1){
            //save commissonPercentage in permenent storage
            NSUserDefaults.standardUserDefaults().setObject(0.9, forKey: "CommissionPercent")
            
            unCheckAll()
            nineOne.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else if(indexPath.row == 2){
            //save commissonPercentage in permenent storage
            NSUserDefaults.standardUserDefaults().setObject(0.8, forKey: "CommissionPercent")
            
            unCheckAll()
                eightTwo.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else if(indexPath.row == 3){
            //save commissonPercentage in permenent storage
            NSUserDefaults.standardUserDefaults().setObject(0.7, forKey: "CommissionPercent")
            
            unCheckAll()
                sevenThree.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else if(indexPath.row == 4){
            //save commissonPercentage in permenent storage
            NSUserDefaults.standardUserDefaults().setObject(0.6, forKey: "CommissionPercent")
            
            unCheckAll()
                sixFour.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else if(indexPath.row == 5){
            //save commissonPercentage in permenent storage
            NSUserDefaults.standardUserDefaults().setObject(0.5, forKey: "CommissionPercent")
            
            unCheckAll()
                fiveFive.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else if(indexPath.row == 6){
            //save commissonPercentage in permenent storage
            NSUserDefaults.standardUserDefaults().setObject(0.4, forKey: "CommissionPercent")
            
            unCheckAll()
                FourSix.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else if(indexPath.row == 7){
            //save commissonPercentage in permenent storage
            NSUserDefaults.standardUserDefaults().setObject(0.3, forKey: "CommissionPercent")
            
            unCheckAll()
                threeSeven.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else if(indexPath.row == 8){
            //save commissonPercentage in permenent storage
            NSUserDefaults.standardUserDefaults().setObject(0.2, forKey: "CommissionPercent")
            
            unCheckAll()
                twoEight.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else if(indexPath.row == 9){
            //save commissonPercentage in permenent storage
            NSUserDefaults.standardUserDefaults().setObject(0.1, forKey: "CommissionPercent")
            
            unCheckAll()
                oneNine.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else {
            //save commissonPercentage in permenent storage
            NSUserDefaults.standardUserDefaults().setObject(0.0, forKey: "CommissionPercent")
            
            unCheckAll()
            zeroTen.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
    }

    private func unCheckAll() -> Void{
        tenZero.accessoryType = UITableViewCellAccessoryType.None
        oneNine.accessoryType = UITableViewCellAccessoryType.None
        twoEight.accessoryType = UITableViewCellAccessoryType.None
        threeSeven.accessoryType = UITableViewCellAccessoryType.None
        FourSix.accessoryType = UITableViewCellAccessoryType.None
        fiveFive.accessoryType = UITableViewCellAccessoryType.None
        sixFour.accessoryType = UITableViewCellAccessoryType.None
        sevenThree.accessoryType = UITableViewCellAccessoryType.None
        eightTwo.accessoryType = UITableViewCellAccessoryType.None
        nineOne.accessoryType = UITableViewCellAccessoryType.None
        zeroTen.accessoryType = UITableViewCellAccessoryType.None
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /*override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/

    /*override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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

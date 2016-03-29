//
//  SettingTableViewController.swift
//  Nails Keeper
//
//  Created by Uy Nguyen on 3/27/16.
//  Copyright © 2016 TIM NGUYEN. All rights reserved.
//

import UIKit
import Social

class SettingTableViewController: UITableViewController {

  
   
    @IBOutlet weak var settingNavigationBar: UINavigationItem!
    
    @IBOutlet weak var commissionCell: UITableViewCell!
    
    @IBOutlet weak var LanguageCell: UITableViewCell!
    
    
    @IBOutlet weak var tutorialCell: UITableViewCell!
    
    @IBOutlet weak var shareFacebookCell: UITableViewCell!
    
    @IBOutlet weak var shareTwitterCell: UITableViewCell!
    
    @IBOutlet weak var buyDeviceCell: UITableViewCell!
    
    @IBOutlet weak var currentYearAmountCell: UITableViewCell!
    
    @IBOutlet weak var currentYearTipCardCell: UITableViewCell!
    
    @IBOutlet weak var currentYearTipCahsCell: UITableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO: display year report data
        currentYearAmountCell.detailTextLabel?.text = "$85000"
        currentYearTipCardCell.detailTextLabel?.text = "$5000"
        currentYearTipCahsCell.detailTextLabel?.text = "$4000"
        
        
        let language = NSUserDefaults.standardUserDefaults().objectForKey("language")
        if(language != nil){
            LanguageCell.detailTextLabel?.text = language as! String
        }
        else{//No language setting yet
            //save language in permanent storage
            NSUserDefaults.standardUserDefaults().setObject("english", forKey: "language")
            LanguageCell.detailTextLabel?.text = "english"
        }
        
        //TODO SET VIETNAMESE LANGUAGE
        if(language != nil && language as! String == "tiếng việt"){
            settingNavigationBar.title = "Còn Nữa"
            commissionCell.textLabel?.text = "Chia theo (thợ-chủ)"
            LanguageCell.textLabel?.text = "Language - Ngôn ngữ"
            tutorialCell.textLabel?.text = "Video hướng dẫn sử dụng"
            shareFacebookCell.textLabel?.text = "Chia sẽ app trên facebook"
            shareTwitterCell.textLabel?.text = "chia sẽ app trên twitter"
            buyDeviceCell.textLabel?.text = "Mua máy quản lý tiệm nails"
            currentYearAmountCell.textLabel?.text = "Tổng tiền làm"
            currentYearTipCahsCell.textLabel?.text = "Tổng típ mặt"
            currentYearTipCardCell.textLabel?.text = "Tổng típ thẻ"
            
        }
        else{
            settingNavigationBar.title = "More"
            commissionCell.textLabel?.text = "Commission (worker-owner)"
            LanguageCell.textLabel?.text = "Language - Ngôn ngữ"
            tutorialCell.textLabel?.text = "Tutorial videos"
            shareFacebookCell.textLabel?.text = "Share this app on Facebook"
            shareTwitterCell.textLabel?.text = "Share this app on Twitter"
            buyDeviceCell.textLabel?.text = "Buy nails owners version"
            currentYearAmountCell.textLabel?.text = "Total amount"
            currentYearTipCahsCell.textLabel?.text = "Total tip in card"
            currentYearTipCardCell.textLabel?.text = "Total tip cash"
        }
        //get percentage from permenent storage
        let percentage = NSUserDefaults.standardUserDefaults().objectForKey("CommissionPercent")
        
        if (percentage != nil) {
            var commonObject: Common = Common()
            
            var percentageS = commonObject.getStringFormatCommission(percentage as! Double)//getStringFormatCommission( percentage as! Double)
            print(percentageS)
            
            commissionCell.detailTextLabel?.text = percentageS
        }
        else{ // no commission setting yet
            //save to permanent storage with 0.6
            //save commissonPercentage in permenent storage
            NSUserDefaults.standardUserDefaults().setObject(0.6, forKey: "CommissionPercent")
            commissionCell.detailTextLabel?.text = "6-4"
        }

        
        
        
        
        
        
        
        
    }
    
    // to update the view when back button is clicked
    override func viewWillAppear(animated: Bool) {
        //update the view
        let language = NSUserDefaults.standardUserDefaults().objectForKey("language")
        if(language != nil){
            LanguageCell.detailTextLabel?.text = language as! String
        }
        else{//No language setting yet
            //save language in permanent storage
            NSUserDefaults.standardUserDefaults().setObject("english", forKey: "language")
            LanguageCell.detailTextLabel?.text = "english"
        }
        
        //TODO SET VIETNAMESE LANGUAGE
        if(language != nil && language as! String == "tiếng việt"){
            settingNavigationBar.title = "Còn Nữa"
            commissionCell.textLabel?.text = "Chia theo (thợ-chủ)"
            LanguageCell.textLabel?.text = "Language - Ngôn ngữ"
            tutorialCell.textLabel?.text = "Video hướng dẫn sử dụng"
            shareFacebookCell.textLabel?.text = "Chia sẽ app trên facebook"
            shareTwitterCell.textLabel?.text = "chia sẽ app trên twitter"
            buyDeviceCell.textLabel?.text = "Mua máy quản lý tiệm nails"
            currentYearAmountCell.textLabel?.text = "Tổng tiền làm"
            currentYearTipCahsCell.textLabel?.text = "Tổng típ mặt"
            currentYearTipCardCell.textLabel?.text = "Tổng típ thẻ"
            
        }
        else{
            settingNavigationBar.title = "More"
            commissionCell.textLabel?.text = "Commission (worker-owner)"
            LanguageCell.textLabel?.text = "Language - Ngôn ngữ"
            tutorialCell.textLabel?.text = "Tutorial videos"
            shareFacebookCell.textLabel?.text = "Share this app on Facebook"
            shareTwitterCell.textLabel?.text = "Share this app on Twitter"
            buyDeviceCell.textLabel?.text = "Buy nails owners version"
            currentYearAmountCell.textLabel?.text = "Total amount"
            currentYearTipCahsCell.textLabel?.text = "Total tip in card"
            currentYearTipCardCell.textLabel?.text = "Total tip cash"
        }
        
        //get percentage from permenent storage
        let percentage = NSUserDefaults.standardUserDefaults().objectForKey("CommissionPercent")
        
        if (percentage != nil) {
            var commonObject: Common = Common()
            
            var percentageS = commonObject.getStringFormatCommission(percentage as! Double)//getStringFormatCommission( percentage as! Double)
            print(percentageS)
            
            commissionCell.detailTextLabel?.text = percentageS
        }
        else{ // no commission setting yet
            //save to permanent storage with 0.6
            //save commissonPercentage in permenent storage
            NSUserDefaults.standardUserDefaults().setObject(0.6, forKey: "CommissionPercent")
            commissionCell.detailTextLabel?.text = "6-4"
            
            
        }

    }
    
    // update the tab bar item name
    override func awakeFromNib() {
        super.awakeFromNib()
        let language = NSUserDefaults.standardUserDefaults().objectForKey("language")
                //TODO SET VIETNAMESE LANGUAGE
        if(language != nil && language as! String == "tiếng việt"){
            self.title = "Còn Nữa";
        }
        else{
            self.title = "More";
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if(indexPath.section == 2 && indexPath.row == 0){//TUTORIAL
            let url = NSURL(string: "http://nailsolution.us")!
            UIApplication.sharedApplication().openURL(url)

                    }
        else if(indexPath.section == 2 && indexPath.row == 1){// SHARE FACEBOOK
            if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook){
                var facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
                facebookSheet.setInitialText("Share on Facebook")
                self.presentViewController(facebookSheet, animated: true, completion: nil)
            } else {
                var alert = UIAlertController(title: "Accounts", message: "Please login to a Facebook account to share.", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
            }
        }
        else if (indexPath.section == 2 && indexPath.row == 2) {// SHARE TWEETER
                
                if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter){
                    var twitterSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
                    twitterSheet.setInitialText("Share on Twitter")
                    self.presentViewController(twitterSheet, animated: true, completion: nil)
                } else {
                    var alert = UIAlertController(title: "Accounts", message: "Please login to a Twitter account to share.", preferredStyle: UIAlertControllerStyle.Alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                    self.presentViewController(alert, animated: true, completion: nil)
                }
            }
        else if(indexPath.section == 2 && indexPath.row == 3){//BUY DEVICE
                let url = NSURL(string: "http://nailsolution.us/Home/Tutorial")!
                UIApplication.sharedApplication().openURL(url)
            
        }
        
    }
    
    /*private func getStringFormatCommission( commisson: Double ) -> String{
        if(commisson == 1.0){
            return "10-0"
        }
        else{
            return "6-4"
        }
    }*/

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

   /* override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }*/

    
    /*override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        cell.textLabel!.text = "Percentage (worker-owner)"
        cell.detailTextLabel?.text = "6-4"
        // Configure the cell...

        return cell
    }*/
    

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

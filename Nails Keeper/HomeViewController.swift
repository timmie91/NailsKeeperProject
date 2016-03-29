//
//  HomeViewController.swift
//  Nails Keeper
//
//  Created by TIM NGUYEN on 3/16/16.
//  Copyright © 2016 TIM NGUYEN. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var RecentlyAddedTableView: UITableView!
    
    var theDate:NSDate! {
        didSet {
            updateUI()
        }
    }
    
    var datePicker = UIDatePicker()
    
    var pickerDateToolbar:UIToolbar!
    
    var formatter:NSDateFormatter!
    var choose = UIButton(type: UIButtonType.System) as UIButton
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.FullStyle
        self.theDate = NSDate()
        
        
        let chooseDateButton = UIBarButtonItem(title: NSLocalizedString("Choose Date", comment: ""), style: .Plain, target: self, action: "addPicker:")
        
        choose.frame = CGRectMake(100,100,100,50)
        choose.backgroundColor = UIColor(red: 0.784, green: 0.220, blue: 0.353, alpha: 1.0)
        choose.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        choose.setTitle("Choose Date", forState: UIControlState.Normal)
        choose.addTarget(self, action: "addPicker:", forControlEvents: UIControlEvents.TouchUpInside)

        
        
        var spacer = UIBarButtonItem(barButtonSystemItem: .FlexibleSpace,
            target: self, action: nil)
        self.view.addSubview(choose)
        
        configDatePicker()


        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        dateLabel.text = formatter.stringFromDate(theDate)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HomeCell", forIndexPath: indexPath) as! HomeTableViewCell
        cell.workDate.text = "03/16/16"
        cell.amount.text = "$45.00"
        cell.tipCard.text = "$12.50"
        cell.tipCash.text = "$00.00"
        cell.stuffNo.text = "99"
        
        return cell;
    }
    
    var blurView:UIVisualEffectView!
    func blur() {
        // ios 8 stuff
        blurView = UIVisualEffectView(effect: UIBlurEffect(style: .Light))
        blurView.userInteractionEnabled = false
        self.view.addSubview(blurView)
        blurView.frame = self.view.bounds
    }
    
    func unblur() {
        self.blurView.removeFromSuperview()
    }
    
    // if you touch the view while the datepicker is visible, you will get
    // a blank screen when it is dismissed. self.view.userInteractionEnabled will not
    // work because it disables the entire tree.
    // this works. I don't know a better way, nor why the view is blank when this isn't here.
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
        
    }
    
    func configDatePicker() {
        datePicker.alpha = 1.0
        datePicker.backgroundColor = UIColor(red: 0.992, green: 0.486, blue: 0.431, alpha: 1.0)
        //        datePicker.addTarget(self,
        //            action:"datePickerDateChanged:",
        //            forControlEvents:.ValueChanged)
        
        
        datePicker.datePickerMode = .Date
        datePicker.timeZone = NSTimeZone.localTimeZone()
        datePicker.calendar = NSCalendar.currentCalendar()
        
        let dateComponents = NSDateComponents()
        dateComponents.day = 31
        dateComponents.month = 12
        dateComponents.year = 2014
        datePicker.maximumDate = NSCalendar.currentCalendar().dateFromComponents(dateComponents)
        dateComponents.day = 1
        dateComponents.month = 1
        dateComponents.year = 2017
        datePicker.minimumDate = NSCalendar.currentCalendar().dateFromComponents(dateComponents)
        
        let done = UIBarButtonItem(title:  NSLocalizedString("Done", comment: ""), style: .Plain, target: self, action: "doneWithDatePicker:")
        let nextMonth = UIBarButtonItem(title: NSLocalizedString(">", comment: ""), style: .Plain, target: self, action: "nextMonth:")
        let previousMonth = UIBarButtonItem(title: NSLocalizedString("<", comment: ""), style: .Plain, target: self, action: "previousMonth:")
        let spacer = UIBarButtonItem(barButtonSystemItem: .FlexibleSpace,
            target: self, action: nil)
        pickerDateToolbar = UIToolbar()
        pickerDateToolbar.items = [previousMonth, spacer,done,spacer, nextMonth]
        
        let screenRect = self.view.frame
        let pickerSize = self.datePicker.sizeThatFits(CGSizeZero)
        let x = screenRect.origin.x + (screenRect.size.width / 2) - (pickerSize.width / 2)
        let pickerRect = CGRectMake(x,
            screenRect.origin.y + (screenRect.size.height / 2) - (pickerSize.height / 2),
            pickerSize.width,
            pickerSize.height)
        self.datePicker.frame = pickerRect
        
        let toolbarSize = self.pickerDateToolbar.sizeThatFits(CGSizeZero)
        pickerDateToolbar.frame = CGRectMake(x,
            pickerRect.origin.y + pickerRect.size.height, // right under the picker
            pickerSize.width, // make them the same width
            toolbarSize.height)
    }
    
    func datePickerDateChanged(dp:UIDatePicker) {
        self.theDate = dp.date
    }
    
    /**
     called from toolbar button.
     */
    func addPicker(sender : AnyObject) {
        self.blur()
        
        self.datePicker.date = self.theDate
        self.view.addSubview(self.datePicker)
        self.view.addSubview(self.pickerDateToolbar)
        
        // this disables the entire tree
        //self.view.userInteractionEnabled = false
        self.datePicker.userInteractionEnabled = true
        self.choose.userInteractionEnabled = false
        
    }
    
    func doneWithDatePicker(sender : AnyObject) {
        unblur()
        self.datePicker.removeFromSuperview()
        self.pickerDateToolbar.removeFromSuperview()
        
        self.theDate = self.datePicker.date
        self.choose.userInteractionEnabled = true
    }
    
    func nextMonth(sender : AnyObject) {
        let currentCalendar = NSCalendar.currentCalendar()
        let dateComponents = NSDateComponents()
        dateComponents.month = 1
        self.datePicker.date = currentCalendar.dateByAddingComponents(dateComponents, toDate: self.datePicker.date, options: [])!
        
    }
    func previousMonth(sender : AnyObject) {
        let currentCalendar = NSCalendar.currentCalendar()
        let dateComponents = NSDateComponents()
        dateComponents.month = -1
        self.datePicker.date = currentCalendar.dateByAddingComponents(dateComponents, toDate: self.datePicker.date, options: [])!
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

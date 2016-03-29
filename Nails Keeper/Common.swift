//
//  Common.swift
//  Nails Keeper
//
//  Created by TIM NGUYEN on 3/16/16.
//  Copyright © 2016 TIM NGUYEN. All rights reserved.
//

import Foundation
extension NSDate {
    func dayOfWeek() -> Int? {
        guard
            let cal: NSCalendar = NSCalendar.currentCalendar(),
            let comp: NSDateComponents = cal.components(.Weekday, fromDate: self) else { return nil }
        return comp.weekday
    }
}
<<<<<<< HEAD

=======
>>>>>>> master
class Common{
    
    func getThisMonday()->NSDate{
        var today = NSDate().dayOfWeek()
        if(today == 2){
            return NSDate()
        }
        else if(today == 3){
            var calendar = NSCalendar.currentCalendar()
            return calendar.dateByAddingUnit(.Day, value: -1, toDate: NSDate(), options: [])!
        }
        else if(today == 4){
            var calendar = NSCalendar.currentCalendar()
            return calendar.dateByAddingUnit(.Day, value: -2, toDate: NSDate(), options: [])!
        }
        else if(today == 5){
            var calendar = NSCalendar.currentCalendar()
            return calendar.dateByAddingUnit(.Day, value: -3, toDate: NSDate(), options: [])!
        }
        else if(today == 6){
            var calendar = NSCalendar.currentCalendar()
            return calendar.dateByAddingUnit(.Day, value: -4, toDate: NSDate(), options: [])!
        }
        else if(today == 7){
            var calendar = NSCalendar.currentCalendar()
            return calendar.dateByAddingUnit(.Day, value: -5, toDate: NSDate(), options: [])!
        }
        else{
                var calendar = NSCalendar.currentCalendar()
                return calendar.dateByAddingUnit(.Day, value: -6, toDate: NSDate(), options: [])!
            }
        }
    func getThisSunDay()->NSDate{
        var today = NSDate().dayOfWeek()
        if(today == 1){
            return NSDate()
        }
        else if(today == 2){
            var calendar = NSCalendar.currentCalendar()
            return calendar.dateByAddingUnit(.Day, value: +6, toDate: NSDate(), options: [])!
        }
        else if(today == 3){
            var calendar = NSCalendar.currentCalendar()
            return calendar.dateByAddingUnit(.Day, value: +5, toDate: NSDate(), options: [])!
        }
        else if(today == 4){
            var calendar = NSCalendar.currentCalendar()
            return calendar.dateByAddingUnit(.Day, value: +4, toDate: NSDate(), options: [])!
        }
        else if(today == 5){
            var calendar = NSCalendar.currentCalendar()
            return calendar.dateByAddingUnit(.Day, value: +3, toDate: NSDate(), options: [])!
        }
        else if(today == 6){
            var calendar = NSCalendar.currentCalendar()
            return calendar.dateByAddingUnit(.Day, value: +2, toDate: NSDate(), options: [])!
        }
        else{
            var calendar = NSCalendar.currentCalendar()
            return calendar.dateByAddingUnit(.Day, value: +1, toDate: NSDate(), options: [])!
        }

    }
    
<<<<<<< HEAD
     func getStringFormatCommission( commisson: Double ) -> String{
        if(commisson == 1.0){
            return "10-0"
        }
        if(commisson == 0.9){
            return "9-1"
        }
        if(commisson == 0.8){
            return "8-2"
        }
        if(commisson == 0.7){
            return "7-3"
        }
        if(commisson == 0.6){
            return "6-4"
        }
        if(commisson == 0.5){
            return "5-5"
        }
        if(commisson == 0.4){
            return "4-6"
        }
        if(commisson == 0.3){
            return "3-7"
        }
        if(commisson == 0.2){
            return "2-8"
        }
        if(commisson == 0.1){
            return "1-9"
        }
        else{
            return "6-4"
        }
    }
    
    
    
=======
>>>>>>> master
}

    


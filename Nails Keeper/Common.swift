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
    
}

    


//
//  TransactionModel.swift
//  Nails Keeper
//
//  Created by TIM NGUYEN on 3/16/16.
//  Copyright © 2016 TIM NGUYEN. All rights reserved.
//

import Foundation
class transactionModel{
     var entryTime: NSDate?
     var workDate: NSDate?
    var amount: Double?
    var tipCard: Double?
     var tipCash: Double?
    var stubNumber: Int?
    var isAllDay: Bool?
     var percentage: Double?
     var transID:Int?
    init(entryT:NSDate,workD:NSDate,amt:Double,tipCar:Double,tipCas:Double,stubN:Int,isAllD:Bool,per:Double,id:Int){
        entryTime = entryT
        workDate = workD
        amount = amt
        tipCard = tipCar
        tipCash = tipCas
        stubNumber = stubN
        isAllDay = isAllD
        percentage = per
        transID = id
    }
    func commission()->Double{
        return amount! * percentage!
    }
    func ownerPay()->Double{
        return commission() + tipCard!
    }
    func income() ->Double{
        return ownerPay() + tipCash!
    }
}
class transactionList{
    var transList:Array<transactionModel>?
    init(tList:Array<transactionModel>?){
        transList = tList
    }
    func getArrayOfTransactionByDay(workDate:NSDate) -> Array<transactionModel>{
        let calendar = NSCalendar.currentCalendar()
        let requestDateComponent = calendar.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year, NSCalendarUnit.WeekOfYear, NSCalendarUnit.Hour, NSCalendarUnit.Minute, NSCalendarUnit.Second, NSCalendarUnit.Nanosecond], fromDate: workDate)
        var returnedArray:Array<transactionModel>?
        for t in transList!{
            let workDateComponent = calendar.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year, NSCalendarUnit.WeekOfYear, NSCalendarUnit.Hour, NSCalendarUnit.Minute, NSCalendarUnit.Second, NSCalendarUnit.Nanosecond], fromDate: t.workDate!)
            if(requestDateComponent.day == workDateComponent.day && requestDateComponent.month == workDateComponent.month && requestDateComponent.year == workDateComponent.year){
                returnedArray?.append(t)
            }
        }
        return returnedArray!
    }
    func getArrayOfTransactionByRange(from:NSDate,to:NSDate) -> Array<transactionModel>{
        var fromConverted:NSDate = convertDate(from)
        var toConverted:NSDate = convertDate(to)

        var returnedArray:Array<transactionModel>?
        for t in transList!{
            var transWorkDateConverted:NSDate = convertDate(t.workDate!)
            if((t.workDate!.compare(fromConverted) == NSComparisonResult.OrderedDescending || t.workDate!.compare(fromConverted) == NSComparisonResult.OrderedSame) && (t.workDate!.compare(toConverted) == NSComparisonResult.OrderedAscending || t.workDate!.compare(toConverted) == NSComparisonResult.OrderedSame)){
                
                returnedArray?.append(t)
            }
        }
        return returnedArray!
    }
    func convertDate(date:NSDate)->NSDate{
        let calendar = NSCalendar(calendarIdentifier: NSGregorianCalendar)!
        let dateComponent = calendar.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year, NSCalendarUnit.WeekOfYear, NSCalendarUnit.Hour, NSCalendarUnit.Minute, NSCalendarUnit.Second, NSCalendarUnit.Nanosecond], fromDate: date)
        return calendar.dateWithEra(1, year: dateComponent.year, month: dateComponent.month, day: dateComponent.day, hour: 0, minute: 0, second: 0, nanosecond: 0)!
    
    }

    func oneDayOwnerPay(workDate:NSDate)-> Double{
        var total:Double?
        for t in getArrayOfTransactionByDay(workDate){
            total = total! + t.ownerPay()
        }
        return total!
    }
    func oneDayTotalAmount(workDate:NSDate) ->Double{
        var totalAmt:Double?
        for t in getArrayOfTransactionByDay(workDate){
            totalAmt = totalAmt! + t.amount!
        }
        return totalAmt!
    }
    func oneDayTotalTipCard(workDate:NSDate) ->Double{
        var total:Double?
        for t in getArrayOfTransactionByDay(workDate){
            total = total! + t.tipCard!
        }
        return total!
    }
    func oneDayTotalTipCash(workDate:NSDate) ->Double{
        var total:Double?
        for t in getArrayOfTransactionByDay(workDate){
            total = total! + t.tipCash!
        }
        return total!
    }
    func oneDayTotalIncome(workDate:NSDate) ->Double{
        var total:Double?
        for t in getArrayOfTransactionByDay(workDate){
            total = total! + t.income()
        }
        return total!
    }
    
    func byRangeOwnerPay(from:NSDate, to:NSDate)-> Double{
        var total:Double?
        for t in getArrayOfTransactionByRange(from, to: to){
            total = total! + t.ownerPay()
        }
        return total!
    }
    func byRangeTotalAmount(from:NSDate, to:NSDate)-> Double{
        var total:Double?
        for t in getArrayOfTransactionByRange(from, to: to){
            total = total! + t.amount!
        }
        return total!
    }
    func byRangeTipCard(from:NSDate, to:NSDate)-> Double{
        var total:Double?
        for t in getArrayOfTransactionByRange(from, to: to){
            total = total! + t.tipCard!
        }
        return total!
    }
    func byRangeTipCash(from:NSDate, to:NSDate)-> Double{
        var total:Double?
        for t in getArrayOfTransactionByRange(from, to: to){
            total = total! + t.tipCash!
        }
        return total!
    }
    func byRangeIncome(from:NSDate, to:NSDate)-> Double{
        var total:Double?
        for t in getArrayOfTransactionByRange(from, to: to){
            total = total! + t.income()
        }
        return total!
    }


}


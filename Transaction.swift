//
//  Transaction.swift
//  Nails Keeper
//
//  Created by TIM NGUYEN on 3/16/16.
//  Copyright © 2016 TIM NGUYEN. All rights reserved.
//

import Foundation
import CoreData


class Transaction: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    @NSManaged var entryTime: NSDate?
    @NSManaged var workDate: NSDate?
    @NSManaged var amount: NSDecimalNumber?
    @NSManaged var tipCard: NSDecimalNumber?
    @NSManaged var tipCash: NSDecimalNumber?
    @NSManaged var stubNumber: NSNumber?
    @NSManaged var isAllDay: NSNumber?
    @NSManaged var percentage: NSDecimalNumber?
    @NSManaged var transID:NSNumber?
    
}


//
//  HomeTableViewCell.swift
//  Nails Keeper
//
//  Created by TIM NGUYEN on 3/16/16.
//  Copyright © 2016 TIM NGUYEN. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var workDate: UILabel!

    @IBOutlet weak var amount: UILabel!
    
    @IBOutlet weak var tipCard: UILabel!
    
    @IBOutlet weak var tipCash: UILabel!
    
    @IBOutlet weak var stuffNo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

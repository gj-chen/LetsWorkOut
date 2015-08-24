//
//  WorkoutCell.swift
//  LetsWorkout
//
//  Created by Gloria Chen on 8/21/15.
//  Copyright (c) 2015 Gloria Chen. All rights reserved.
//

import UIKit

class WorkoutCell: UITableViewCell {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var textCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

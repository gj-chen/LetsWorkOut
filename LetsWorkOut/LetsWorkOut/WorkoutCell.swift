//
//  WorkoutCell.swift
//  LetsWorkout
//
//  Created by Gloria Chen on 8/21/15.
//  Copyright (c) 2015 Gloria Chen. All rights reserved.
//

import UIKit
import Foundation

class Workout{
    var videoId: String
    var title: String
    var workoutText: String
    var color: UIColor
    //! is an optional - the variable is optional and currently nil - when we are ready to use it, it wont be nil (implicitly unwrapped optional)
    
    //initialize variables 
    init(title: String, videoID: String, workoutText: String, color: UIColor){
        self.videoId = videoID
        self.title = title
        self.workoutText = workoutText
        self.color = color
    }
}





class WorkoutCell: UITableViewCell {

    @IBOutlet weak var count: UILabel!
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

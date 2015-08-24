//
//  Workout.swift
//  LetsWorkout
//
//  Created by Gloria Chen on 8/24/15.
//  Copyright (c) 2015 Gloria Chen. All rights reserved.
//

import UIKit
import Foundation

class Workout {
    var videoId: String!
    var title: String!
    var workoutText: String!
    var color: UIColor!
        
    init(title: String, videoId: String, workoutText: String, color: UIColor){
        self.videoId = videoId
        self.title = title
        self.workoutText = workoutText
        self.color = color
        }
}

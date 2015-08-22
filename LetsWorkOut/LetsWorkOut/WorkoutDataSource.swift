
//
//  WorkoutDataSource.swift
//  LetsWorkout
//
//  Created by Gloria Chen on 8/21/15.
//  Copyright (c) 2015 Gloria Chen. All rights reserved.
//

import Foundation
import UIKit
import ChameleonFramework

class WorkoutDataSource {
    var workouts:[Workout]
    
    init(){
        workouts = []
        let wk1 = Workout(title: "Jumping Jacks", videoID: "UpH7rm0cYbM", workoutText: "A calisthenic jump done from a standing position with legs together and arms at the sides to a position with the legs apart and the arms over the head.", color: UIColor.flatRedColor())
        workouts.append(wk1)
        
        let wk2 = Workout(title: "Wall Sits", videoID: "y-wV4Venusw", workoutText: "A wall sit, also known as a Roman Chair, is an exercise done to strengthen the quadriceps muscles. It is characterized by the two right angles formed by the body, one at the hips and one at the knees.", color: UIColor.flatTealColor())
        workouts.append(wk2)
    
        let wk3 = Workout(title: "Push Ups",videoID: "Eh00_rniF8E", workoutText: "An exercise in which a person lies facing the floor and, keeping their back straight, raises their body by pressing down on their hands.", color: UIColor.flatBlueColor())
        workouts.append(wk3)
        
        let wk4 = Workout(title: "Abdominal Crunches", videoID: "2yOFvV-NSeY", workoutText: "A crunch begins with lying face up on the floor with knees bent. The movement begins by curling the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest. Injury can be caused by pushing against the head or neck with hands.", color: UIColor.flatPurpleColor())
        workouts.append(wk4)
        
        let wk5 = Workout(title: "Step-ups", videoID: "kM2FfDIwsao", workoutText: "To do a step-up, position your chair in front of your body. Stand with your feet about hip-width apart, arms at your sides. Step up onto the seat with one foot, pressing down while bringing your other foot up next to it. ", color: UIColor.flatGreenColor())
        workouts.append(wk5)
        
        let wk6 = Workout(title: "Squats", videoID: "mGvzVjuY8SY", workoutText: "Crouch or sit with one's knees bent and one's heels close to or touching one's buttocks or the back of one's thighs.", color: UIColor.flatNavyBlueColor())
        workouts.append(wk6)
        
        let wk7 = Workout(title: "Triceps Dips", videoID: "0326dy_-CzM", workoutText: "Triceps dips on a chair", color: UIColor.flatWatermelonColor())
        workouts.append(wk7)
    }
    
    func getWorkOuts() -> [Workout]{
        return workouts
    }
}






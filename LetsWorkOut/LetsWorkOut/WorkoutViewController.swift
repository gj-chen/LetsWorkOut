//
//  WorkoutViewController.swift
//  LetsWorkout
//
//  Created by Gloria Chen on 8/24/15.
//  Copyright (c) 2015 Gloria Chen. All rights reserved.
//

import UIKit
import MZTimerLabel

class WorkoutViewController: UIViewController, MZTimerLabelDelegate {

    @IBOutlet weak var nextUp: UILabel!
    @IBOutlet weak var workoutLabel: UILabel!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var timerLabel: MZTimerLabel!
    
    let restTime = 11.0
    let workoutTime = 30.0
    var index = 5;
    let dataSource = WorkoutDataSource()
    var workouts: [Workout]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerLabel.delegate = self
        timerLabel.timerType = MZTimerLabelTypeTimer
        timerLabel.setCountDownTime(10)
        timerLabel.timeFormat = "ss"
        timerLabel.resetTimerAfterFinish = true
        timerLabel.start()
        workouts = dataSource.getWorkOuts()
        workoutLabel.text = workouts[0].title
        self.navigationController?.navigationBar.barTintColor = workouts[0].color
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func timerLabel(timerLabel: MZTimerLabel!, finshedCountDownTimerWithTime countTime: NSTimeInterval) {
        
        if index % 2 == 0 {
            let wk = workouts[index / 2]
            timerLabel.text = "\(workoutTime)"
            mainLabel.text = wk.title
            self.view.backgroundColor = wk.color
            timerLabel.setCountDownTime(workoutTime);
            workoutLabel.text = "Rest !!"
            self.navigationController?.navigationBar.barTintColor = wk.color
        } else {
            let wk = workouts[index / 2 + 1]
            timerLabel.text = "\(restTime)"
            mainLabel.text = "Rest !!"
            self.view.backgroundColor = wk.color
            timerLabel.setCountDownTime(restTime);
            workoutLabel.text = wk.title
            self.navigationController?.navigationBar.barTintColor = wk.color
        }
        
        index++;
        if !((index/2) == workouts.count) {
            timerLabel.start()
        } else {
            println("Workout done")
        }
    }
    

}

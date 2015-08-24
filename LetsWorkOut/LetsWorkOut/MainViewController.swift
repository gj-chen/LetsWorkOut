//
//  MainViewController.swift
//  LetsWorkout
//
//  Created by Gloria Chen on 8/24/15.
//  Copyright (c) 2015 Gloria Chen. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    let manager = WorkoutDataSource()
    var workouts = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.workouts = manager.getWorkOuts()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.workouts.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)-> UITableViewCell {
        let workout = self.workouts[indexPath.row] as? Workout
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? WorkoutCell!
        cell!.textCell?.text = workout?.title
        cell!.backgroundColor = workout?.color
        cell!.countLabel.text = "\(indexPath.row+1)"
        cell!.selectionStyle = UITableViewCellSelectionStyle.None
        return cell!
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

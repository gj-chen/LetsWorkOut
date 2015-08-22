//
//  MainViewController.swift
//  LetsWorkout
//
//  Created by Gloria Chen on 8/21/15.
//  Copyright (c) 2015 Gloria Chen. All rights reserved.
//



import UIKit
//MainViewController must also conform to UITableViewDataSource and UITableViewDelegate Protocol 

//UITableViewDataSource: Deals with providing data for the tableview 
//cellForRowAtIndexPath returns an instance of UITableViewCell with necessary data to display 
//numberOfRowsInSection returns how many rows are present in a section 



class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    let manager = WorkoutDataSource()
    var workouts = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.workouts = manager.getWorkOuts()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.workouts.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "mycell")
      //  cell.textLabel.text="row#\(indexPath.row)"
       // cell.detailTextLabel.text="subtitle#\(indexPath.row)"
        
        return cell
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

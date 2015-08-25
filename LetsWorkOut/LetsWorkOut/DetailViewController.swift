//
//  DetailViewController.swift
//  LetsWorkout
//
//  Created by Gloria Chen on 8/24/15.
//  Copyright (c) 2015 Gloria Chen. All rights reserved.
//

import UIKit
import Foundation
import youtube_ios_player_helper



class DetailViewController: UIViewController {
    @IBOutlet weak var detailText: UILabel!
    @IBOutlet weak var playerView: YTPlayerView!
    
    var workout: Workout!
    
    let playerVars = ["playsinline":"1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
    

}

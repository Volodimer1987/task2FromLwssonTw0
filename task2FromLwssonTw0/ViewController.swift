//
//  ViewController.swift
//  task2FromLwssonTw0
//
//  Created by vladimir gennadievich on 11.07.2020.
//  Copyright © 2020 Vladimir Gennadievich. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var segmantedControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(35)
    }

    @IBAction func changeSegmentInSegmentedControl() {
        
    }
    
}

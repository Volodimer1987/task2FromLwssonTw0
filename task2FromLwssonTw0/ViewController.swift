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
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // all about label adjust
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        // all adjust segmented control
        segmantedControl.insertSegment(withTitle: "Thierd", at: 2, animated:false )
        
        //setUp Slider
        
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .green
        slider.maximumTrackTintColor = .systemTeal
        slider.thumbTintColor = .green
        
        mainLabel.text = String(Int(slider.value))

        
    }

    @IBAction func changeSegmentInSegmentedControl() {
        switch segmantedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The first segment is selected"
            mainLabel.textColor = .brown
        case 1:
            mainLabel.text = "The second segment is selected"
            mainLabel.textColor = .blue
        case 2:
            mainLabel.text = "The thierd segment is selected"
            mainLabel.textColor = .purple
        default:
            break
        }
    }
    
    @IBAction func sliderAction() {
        
        mainLabel.text = String(Int(slider.value))
        
        
    }
}

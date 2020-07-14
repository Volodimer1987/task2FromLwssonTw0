//
//  ViewController.swift
//  task2FromLwssonTw0
//
//  Created by vladimir gennadievich on 11.07.2020.
//  Copyright © 2020 Vladimir Gennadievich. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var segmantedControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var doneButton: UIButton!
    
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
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .green
        slider.maximumTrackTintColor = .systemTeal
        slider.thumbTintColor = .green
        
        mainLabel.text = String(slider.value)

        
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
        let backGroundColor = view.backgroundColor
        view.backgroundColor = backGroundColor?.withAlphaComponent(CGFloat(slider.value))
        mainLabel.text = String(slider.value)
        
        
    }
    
    @IBAction func doneButtonAction() {
        guard let inputText = textField.text , !inputText.isEmpty else  { return }
        
        if let _ = Double(inputText) {
            showAlert(title: "Wrong Format", message: "Please enter your name")
            print("Wrong Format")
            
        } else {
            mainLabel.text = inputText
            textField.text = nil
        }
    }
}
extension ViewController {
    
    private func showAlert(title:String,message:String ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        
    let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.textField.text = "" }
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
     
    }
}

//
//  ViewController.swift
//  Date Counter
//
//  Created by Oz Arie Tal Shachar on 26.1.2018.
//  Copyright © 2018 Oz Arie Tal Shachar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userDate = Date()
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var calculateTimeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.setDate(Date(), animated: true)
        calculateTimeButton.isEnabled = false
    }

    
    @IBAction func datePickerAction(_ sender: UIDatePicker) {
        userDate = sender.date
        calculateTimeButton.isEnabled = true
    }
    
    
    @IBAction func calculateTimeButtonPressed(_ sender: UIButton) {
        timeLabel.text = "How many time I'm abstinance?"
        calculateTimeFromStartDateToCurrentDate()
    }
    
    
    func calculateTimeFromStartDateToCurrentDate(){
        let timeComponents = Calendar.current.dateComponents([.year, .month, .day], from: userDate, to: Date())
        if let years = timeComponents.year {
            timeLabel.text?.append("\nYears: \(years),")
        }
        if let months = timeComponents.month {
            timeLabel.text?.append("\nMonths: \(months)")
        }
        if let days = timeComponents.day {
            timeLabel.text?.append("\nDays: \(days)")
        }
    }
    
}
    
    
    

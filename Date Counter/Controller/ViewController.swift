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
        timeLabel.text = ""
        calculateTimeFromStartDateToCurrentDate()
    }
    
    
    func calculateTimeFromStartDateToCurrentDate(){
        
        var years : Int = 0
        var months : Int = 0
        var days : Int = 0

        //TODO: - Fix bug that make it possible to choose a date in the future.
        
        //TODO: - Change the label to "year" and "years" if years < 2, For example.
        
        
        let timeComponents = Calendar.current.dateComponents([.year, .month, .day], from: userDate, to: Date())
        if let year = timeComponents.year {
            years = year
        }
        if let month = timeComponents.month {
            months = month
        }
        if let day = timeComponents.day {
            days = day
        }
        
        
        if years == 0 {
            timeLabel.text = "WOW! It seems that \(months) months and \(days) days passed!"
        } else if months == 0 {
            timeLabel.text = "WOW! It seems that \(years) years and \(days) days passed!"
        } else if days == 0 {
            timeLabel.text = "WOW! It seems that \(years) years and \(months) months passed!"
        } else if years == 0 && months == 0 {
            timeLabel.text = "WOW! It seems that \(days) days passed!"
        } else if years == 0 && days == 0 {
            timeLabel.text = "WOW! It seems that \(months) months passed!"
        } else {
            timeLabel.text = "WOW! It seems that \(years) years, \(months) months and \(days) days passed!"
        }
        
    }
    
}
    
    
    

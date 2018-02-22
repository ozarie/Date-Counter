//
//  ViewController.swift
//  Date Counter
//
//  Created by Oz Arie Tal Shachar on 26.1.2018.
//  Copyright © 2018 Oz Arie Tal Shachar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentDate = Date()
    
    var userDate = Date()

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var calculateTimeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        datePicker.setDate(Date(), animated: true)
        calculateTimeButton.isEnabled = false
    }

    
    @IBAction func datePickerAction(_ sender: UIDatePicker) {

        userDate = sender.date
        
        calculateTimeButton.isEnabled = true

        

//        if  {
//            calculateTimeButton.isEnabled = true
//        } else {
//            calculateTimeButton.isEnabled = false
//        }

        //var years : Int = timeComponents.year!
        //var months : Int = timeComponents.month!
        //var days : Int = timeComponents.day!

//        //print separetly
//        print("Years: \(timeComponents.year)")
//        print("Months: \(timeComponents.month)")
//        print("Days: \(timeComponents.day)")

        //timeLabel.text = "Years: \(years), \nMonths: \(months), \nDays: \(days)"

    }
    
    
    
    @IBAction func calculateTimeButtonPressed(_ sender: UIButton) {
        timeLabel.text = "How many time I'm abstinance?"
        calc()
    }
    
    func calc(){
        userDate = datePicker.date
        let timeComponents = Calendar.current.dateComponents([.year, .month, .day], from: userDate, to: Date())
        
        //let timeComponents = Calendar.current.dateComponents([.year, .month, .day], from: userDate, to: currentDate)
        
        if let years = timeComponents.year {
            timeLabel.text?.append("\nYears: \(years),")
        }
        if let months = timeComponents.month {
            timeLabel.text?.append("\nMonths: \(months)")
        }
        if let days = timeComponents.day {
            timeLabel.text?.append("\nDays: \(days)")
        }
        
        //timeLabel.text = "How many time I'm abstinance?"
    
    }
    
}
    
    
    

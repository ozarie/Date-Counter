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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        datePicker.setDate(Date(), animated: true)
        
    }


    
    @IBAction func datePickerAction(_ sender: UIDatePicker) {
        
        userDate = sender.date

        let theComponents = Calendar.current.dateComponents([.year, .month, .day], from: userDate, to: currentDate)
        
        print(theComponents)

        timeLabel.text = theComponents.description
        
    }
}
    
    
    

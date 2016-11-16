//
//  ViewController.swift
//  FutureDateUsingComponents
//
//  Created by Peter Witham on 11/15/16.
//  Copyright © 2016 Peter Witham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayDate: UILabel!
    @IBOutlet weak var displayDayStepperValue: UILabel!
    @IBOutlet weak var displayHourStepperValue: UILabel!
    
    @IBOutlet weak var dayStepper: UIStepper!
    @IBOutlet weak var hourStepper: UIStepper!
    @IBOutlet weak var dateSelector: UIDatePicker!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dayStepper.value = 0
        hourStepper.value = 0
        displayDayStepperValue.text = "0"
        displayHourStepperValue.text = "0"
        displayDate.text = displayTheDate(theDate: dateSelector.date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dayStepperChanged(_ sender: UIStepper) {
        displayDate.text = displayTheDate(theDate: calculateNewDate())
    }
 
    @IBAction func hourStepperChanged(_ sender: UIStepper) {
        displayDate.text = displayTheDate(theDate: calculateNewDate())
    }
  
    @IBAction func dateSelectorChanged(_ sender: UIDatePicker) {
        displayDate.text = displayTheDate(theDate: calculateNewDate())
    }
    
    func displayTheDate(theDate:Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-YYYY | hh-mm"
        let strDate = dateFormatter.string(from: theDate)
        return strDate
    }
    
    func calculateNewDate() -> Date {
        let newDate = Date()
        return newDate
    }
}

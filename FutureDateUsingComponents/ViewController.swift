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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dayStepperChanged(_ sender: UIStepper) {
    }
 
    @IBAction func hourStepperChanged(_ sender: UIStepper) {
    }
  
    @IBAction func dateSelectorChanged(_ sender: UIDatePicker) {
    }
}

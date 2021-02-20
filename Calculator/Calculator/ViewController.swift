//
//  ViewController.swift
//  Calculator
//
//  Created by Madina Sadirmekova on 12/17/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true) //when you tap anywhere on the screen it will remove keyborads etc(initial state)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        //Calculate the tip and total
        let tipPercentages = [0.1, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        //Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip) //"$\(tip)"
        totalLabel.text = String(format: "$%.2f", total) //"$\(total)"
        
    }
}


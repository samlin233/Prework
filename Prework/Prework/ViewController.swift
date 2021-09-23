//
//  ViewController.swift
//  Prework
//
//  Created by Sen Lin on 8/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var sliderTip: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Tip Calculator"

     }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func tipSliderValueChange(_ sender: Any){
        let bill = Double(billAmountTextField.text!) ?? 0
        let tip = bill * Double(tipSlider.value/100)
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        sliderTip.text = String(format: "Tip: %d%%", Int(tipSlider.value))
        
        
        
    }
}


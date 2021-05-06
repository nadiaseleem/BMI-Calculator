//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    var bmiCalculator = BMICalculator()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%0.2f",sender.value)+"m"

        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f",sender.value)+"Kg"

        
    }
    
    @IBAction func calcultateButtonPressed(_ sender: UIButton) {
        
        bmiCalculator.calculateBMI(height:heightSlider.value,weight:weightSlider.value)
        performSegue(withIdentifier: "goToResult", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmiValue = bmiCalculator.getBMIValue()
            resultVC.advice = bmiCalculator.getAdvice()
            resultVC.backgroundColor = bmiCalculator.getColor()
        }
    }
    
}


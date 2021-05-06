//
//  BMI Calculator.swift
//  BMI Calculator
//

import UIKit

struct BMICalculator {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height:Float ,weight:Float){
        
        let bmiValue = weight / pow(height,2)
        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat More Pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "Fit As A Fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        case 25...:
            bmi = BMI(value: bmiValue, advice: "Eat Fewer Pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        default:
            break
        }
        
    }
    
    func getBMIValue()->String{
        return String(format: "%0.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice()->String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
    }
    
    
}

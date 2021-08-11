//
//  CalculatorBrain.swift
//  Am i a Fatty?
//
//  Created by Hezi Cohen on 08/08/2021.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    func getCalculateValue() -> String {
        
        
        
        let resultsTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return resultsTo1DecimalPlace
        
    }
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? "error"
        
    }
    
    
    func getColor() -> UIColor {
        
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
    
    
    
    
    mutating func calculateResults(height: Float , weight: Float){
        
        
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Healthy as a bull!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
            
        }
        
        else {
            bmi = BMI(value: bmiValue, advice: "Stop EATING!", color: #colorLiteral(red: 1, green: 0.2705882353, blue: 0.2274509804, alpha: 1))
        }
        
    }
    
    
    
    
    
}






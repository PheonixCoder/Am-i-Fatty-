//
//  ViewController.swift
//  Am i a Fatty?
//
//  Created by Hezi Cohen on 07/08/2021.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    
    
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel:
        UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightValueChange(_ sender: UISlider) {
        
        
        //Change text to the label
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
        
    }
    
    
    
    @IBAction func weightValueChange(_ sender: UISlider) {
        
        
        //Change text to the label
        let weight  = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateResults(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResults" {
            
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultsValue = calculatorBrain.getCalculateValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
            
        }
    }
    
    
}


//
//  ResultViewController.swift
//  Am i a Fatty?
//
//  Created by Hezi Cohen on 08/08/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    var resultsValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        resultLabel.text = resultsValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
        
        
    }
    
    
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

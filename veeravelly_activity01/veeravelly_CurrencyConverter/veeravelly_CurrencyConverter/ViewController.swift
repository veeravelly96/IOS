//
//  ViewController.swift
//  veeravelly_CurrencyConverter
//
//  Created by Veeravelly,Sai Krishna on 2/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Namefield: UITextField!
    
    @IBOutlet weak var inrField: UITextField!
    
    @IBOutlet weak var usdField: UITextField!
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func convertbuttonpressed(_ sender: UIButton) {
        
        let inramount = Double(inrField.text!)
        
        let usdamount = Double(usdField.text!)
        
        let res1 = inramount! * 0.013
        
        let res2 = usdamount! * 74.64
        
        DisplayLabel.text = "Hello \(Namefield.text!) \nAmount Rs.\(inramount!) in USD is $\(res1) \rAmount $\(usdamount!) in INR is RS.\(res2)"
    }
    
}


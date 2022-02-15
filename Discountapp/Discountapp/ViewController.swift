//
//  ViewController.swift
//  Discountapp
//
//  Created by Veeravelly,Sai Krishna on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AmountField: UITextField!
    
    @IBOutlet weak var DiscountField: UITextField!
    
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onclickofsubmit(_ sender: UIButton) {
        
        var amount = Double(AmountField.text!)
        var Discount = Double(DiscountField.text!)
        
        
        
    }
}


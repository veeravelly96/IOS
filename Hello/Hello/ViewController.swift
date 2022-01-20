//
//  ViewController.swift
//  Hello
//
//  Created by Veeravelly,Sai Krishna on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    @IBOutlet weak var gradeOutlet: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClicked(_ sender: UIButton) {
        var name = nameOutlet.text!
        var grade = gradeOutlet.text!
        displayLabel.text="Hello, \(name) and the grade is, \(grade)"
        
        //Read the text from the textfield and store in a variable.
        
        
        
        //assign the text to display label in this format hello,name!
    }
    
}


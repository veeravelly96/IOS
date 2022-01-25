//
//  ViewController.swift
//  hellooo
//
//  Created by Jupally,Kavya on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textoutlet1: UITextField!
    
    @IBOutlet weak var displaylabel: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonclicked(_ sender: UIButton) {
        
        var enteredtext = textoutlet1.text!
        
        switch enteredtext {
            case "a","e","i","o","u":
            displaylabel.text = "The alphabet is a lower case vowel"
            case "A","E","I","O","U":
            displaylabel.text = "The alphabet is an upper case vowel"
            default:
                print("The alphabet is a consonant")
    displaylabel.text = "The text have vowels"
}
}

}

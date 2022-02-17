//
//  ViewController.swift
//  veeravelly_Calculator
//
//  Created by Veeravelly,Sai Krishna on 2/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    var v1:Double = -1.1
        var v2:Double = 0
        var res:Double = 0
        var operand = "+"


    
    @IBOutlet weak var Displaylabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonAC(_ sender: UIButton) {
        
        Displaylabel.text  = ""
                v1 = 0
                v2 = 0

    }
    
    @IBAction func ButtonC(_ sender: UIButton) {
        
        Displaylabel.text = ""
    }
    
    @IBAction func ButtonChangeSign(_ sender: UIButton) {
        if(Displaylabel.text?.first == "-"){
            Displaylabel.text?.removeFirst()
        }
        else{
            Displaylabel.text = "-\(Displaylabel.text!)"
        }
        

    }
    
    @IBAction func Buttondivison(_ sender: UIButton) {
        
                    operand = "/"
                    v1 = Double(Displaylabel.text!)!
                    Displaylabel.text = ""
                    
    }
    
    @IBAction func Button7(_ sender: UIButton) {
        
        Displaylabel.text = Displaylabel.text!  + "7"
    }
    
    @IBAction func Button8(_ sender: UIButton) {
        
        Displaylabel.text = Displaylabel.text!  + "8"
    }
    @IBAction func Button9(_ sender: UIButton) {
        
        Displaylabel.text = Displaylabel.text!  + "9"
    }
    
    @IBAction func ButtonX(_ sender: UIButton) {
        
        operand = "*"
            v1 = Double(Displaylabel.text!)!
                Displaylabel.text = ""

    }
    
    @IBAction func Button4(_ sender: UIButton) {
        
        Displaylabel.text = Displaylabel.text!  + "4"
    }
    
    @IBAction func Button5(_ sender: UIButton) {
        
        Displaylabel.text = Displaylabel.text!  + "5"
    }
    
    @IBAction func Button6(_ sender: UIButton) {
        
        Displaylabel.text = Displaylabel.text!  + "6"
    }
    
    @IBAction func Buttonminus(_ sender: UIButton) {
        
                        operand = "-"
                        v1 = Double(Displaylabel.text!)!
                        Displaylabel.text = ""

    }
    
    @IBAction func Button1(_ sender: UIButton) {
        
        Displaylabel.text = Displaylabel.text!  + "1"
    }
    
    @IBAction func Button2(_ sender: UIButton) {
        
        Displaylabel.text = Displaylabel.text!  + "2"
    }
    
    @IBAction func Button3(_ sender: UIButton) {
        
        Displaylabel.text = Displaylabel.text!  + "3"
    }
    
    @IBAction func Buttonplus(_ sender: UIButton) {
        
                        operand = "+"
                        v1 = Double(Displaylabel.text!)!
                        Displaylabel.text = ""

    }
    
    @IBAction func Button0(_ sender: UIButton) {
        
        Displaylabel.text = Displaylabel.text!  + "0"
    }
    
    @IBAction func Buttondot(_ sender: UIButton) {
        
                    if(!Displaylabel.text!.contains("."))
                        {
                            Displaylabel.text = Displaylabel.text! + "."
                            return
                        }

    }
    
    @IBAction func Buttonpercentile(_ sender: UIButton) {
        
                        operand = "%"
                        v1 = Double(Displaylabel.text!)!
                        Displaylabel.text = ""

    }
    @IBAction func Buttonequals(_ sender: UIButton) {
        
        v2 = Double(Displaylabel.text!)!
                             
                             switch operand {
                             case "+":
                                 res = v1+v2
                                 Displaylabel.text = String(res)
                             case "-":
                                 res = v1-v2
                                 Displaylabel.text = String(res)
                             case "*":
                                 res = v1*v2
                                 Displaylabel.text = String(res)
                             case "/":
                                 res = v1/v2
                                 if(v2==0){
                                     Displaylabel.text="Error"
                                 }
                                 else{
                                 let newres=round( res*100000)/100000
                                     Displaylabel.text = String(newres)
                                 }
                             case "%":

                                 res = v1.truncatingRemainder(dividingBy: v2)
                                 let res2=round(res*10)/10
                                 
                                 Displaylabel.text = String(res2)
                             default:
                                 Displaylabel.text = "ERROR"

    }
    
        let splitresponse = Displaylabel.text!.components(separatedBy: ".")
                     let testresponse = Displaylabel.text
                     if(!(testresponse == "Error")){
                     if(splitresponse[1]=="0"){
                         Displaylabel.text = splitresponse[0]
                     }
                     }

}

}


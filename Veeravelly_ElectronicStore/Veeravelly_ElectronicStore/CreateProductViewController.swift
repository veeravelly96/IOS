//
//  CreateProductViewController.swift
//  Veeravelly_ElectronicStore
//
//  Created by Veeravelly,Sai Krishna on 4/26/22.
//

import UIKit

class CreateProductViewController: UIViewController {

    @IBOutlet weak var prodNameOutlet: UITextField!
    
    @IBOutlet weak var prodPriceOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addProductButton(_ sender: UIButton) {
        Electronic.append([prodNameOutlet.text!,prodPriceOutlet.text!])
        _ = navigationController?.popToRootViewController(animated: true)
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

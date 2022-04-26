//
//  DetailViewController.swift
//  Veeravelly_ElectronicStore
//
//  Created by Veeravelly,Sai Krishna on 4/26/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var productNameOutlet: UILabel!
    
    @IBOutlet weak var productPriceOutlet: UILabel!
    
    var index = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        productNameOutlet.text = Electronic[index][0]
        productPriceOutlet.text = Electronic[index][1]

        // Do any additional setup after loading the view.
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

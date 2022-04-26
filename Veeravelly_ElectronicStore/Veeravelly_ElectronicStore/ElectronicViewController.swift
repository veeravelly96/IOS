//
//  ViewController.swift
//  Veeravelly_ElectronicStore
//
//  Created by Veeravelly,Sai Krishna on 4/26/22.
//

import UIKit

class ElectronicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Electronic.count
    }
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableviewoutlet.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = Electronic[indexPath.row][0]
        return cell
    }
    

    @IBOutlet weak var tableviewoutlet: UITableView!
    override func viewDidAppear(_ animated: Bool) {
    tableviewoutlet.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableviewoutlet.delegate = self
        tableviewoutlet.dataSource = self
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let transistion = segue.identifier
            if transistion == "detailView"{
                let destination = segue.destination as!DetailViewController
                
                destination.index = (tableviewoutlet.indexPathForSelectedRow?.row)!
            }
        
    
        if transistion == "createProduct"{
            let destination = segue.destination as! CreateProductViewController
        }
    
    }
   
    
    
    
    @IBAction func addproductbutton(_ sender: UIButton) {
    }
    
}


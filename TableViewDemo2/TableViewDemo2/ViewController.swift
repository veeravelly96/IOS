//
//  ViewController.swift
//  TableViewDemo2
//
//  Created by Veeravelly,Sai Krishna on 3/29/22.
//

import UIKit

class Product{
    var productName : String?
    var productCategory : String?
    
    init(productName: String, productCategory: String){
        self.productName = productName
        self.productCategory = productCategory
    }
}

class ViewController:UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "reusableCell",for:indexPath)
        
        //Assign data to cell
        cell.textLabel?.text = productsArray[indexPath.row].productName
        
        return cell;
    }
    
                            


    
    var productsArray = [Product]()
    @IBOutlet weak var TableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TableViewOutlet.delegate = self
        TableViewOutlet.dataSource = self
        
        let product1 = Product(productName: "MacBookAir", productCategory: "Laptop")
        productsArray.append(product1)
        let product2 = Product(productName: "iphone", productCategory: "Mobilephone")
        productsArray.append(product2)
        let product3 = Product(productName: "Airpods", productCategory: "Accessories")
        productsArray.append(product3)
        let product4 = Product(productName: "Shoes", productCategory: "Footwear")
        productsArray.append(product4)
        let product5 = Product(productName: "jeans", productCategory: "Fashion")
        productsArray.append(product5)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transistion = segue.identifier
        if transistion == "detailsSegue"{
            let destination = segue.destination as!DetailsViewController
            
            destination.product = productsArray[(TableViewOutlet.indexPathForSelectedRow?.row)!]
        }
    }


}


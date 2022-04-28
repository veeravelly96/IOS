//
//  ViewController.swift
//  veeravelly_Movies
//
//  Created by Veeravelly,Sai Krishna on 4/28/22.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let category = categoryArray
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        category.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = category[indexPath.row].category
        return cell
    }
    
    
    @IBOutlet weak var genreTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genreTableView.dataSource = self
        genreTableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moviesview" {
            let destination = segue.destination as! MoviesViewController
            destination.moviesArray = category[genreTableView.indexPathForSelectedRow!.row].movies
            
        }
    }

}


//
//  ViewController.swift
//  MovieCollectionViewApp
//
//  Created by Veeravelly,Sai Krishna on 4/12/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //create a cell and typecast with moviecell
      let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! MovieCollectionViewCell
        //assign movies to cell
        cell.assignMovie(movies[indexPath.row])
        
        //return the cell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleOutlet.text = "Movie title : \(movies[indexPath.row].title)"
        yearReleasedOutlet.text = "Year Released : \(movies[indexPath.row].releasedYear)"
        ratingsOutlet.text = "ratings : \(movies[indexPath.row].movieRating)"
        revenueOutlet.text = "Revenue : \(movies[indexPath.row].boxOffice)"
    }
    
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    
    
    
    
    @IBOutlet weak var titleOutlet: UILabel!
    
   
    @IBOutlet weak var yearReleasedOutlet: UILabel!
    
    @IBOutlet weak var ratingsOutlet: UILabel!
    
    @IBOutlet weak var revenueOutlet: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
    }


}


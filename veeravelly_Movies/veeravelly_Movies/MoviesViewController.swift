//
//  MoviesViewController.swift
//  veeravelly_Movies
//
//  Created by Veeravelly,Sai Krishna on 4/28/22.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = movieCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        
        cell.assignMovie(moviesArray[indexPath.row])
        
        return cell
    }
    

    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    @IBOutlet weak var movieCastLabel: UILabel!
    
    var moviesArray:[Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        movieNameLabel.text = "Movie Name: " + moviesArray[indexPath.row].moviename
        movieRatingLabel.text = "Movie Rating: " + moviesArray[indexPath.row].movieRating
        movieBoxOfficeLabel.text = "Box Office Collection: " + moviesArray[indexPath.row].collections
        
        movieYearLabel.text = "Movie Released Year: " + moviesArray[indexPath.row].yearofrelease
        moviePlotLabel.text = "Description: " +  moviesArray[indexPath.row].moviedescription
        
        var temp : [String] = moviesArray[indexPath.row].cast
        movieCastLabel.text = "Cast: " + temp.joined(separator: ", ")
    }
        
        
}

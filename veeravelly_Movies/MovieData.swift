//
//  MovieData.swift
//  veeravelly_Movies
//
//  Created by Veeravelly,Sai Krishna on 4/28/22.
//

import Foundation
import UIKit

struct Movie {
    var moviename:String
    var image:UIImage
    var yearofrelease:String
    var movieRating:String
    var collections:String
    var moviedescription:String
    var cast:[String] = []
}

struct Genre {
    var category:String = ""
    var movies:[Movie] = []
}



let c1: Genre = Genre(category: "Comedy", movies: [Movie(moviename: "Jathi Ratnalu", image: UIImage(named: "jathi")!, yearofrelease: "2021", movieRating: "4.9", collections: "50 cr", moviedescription: "The plot follows three happy-go-lucky men who arrive in the city for a better life but land up in jail for a crime they didn't commit.", cast: ["Naveen Polishetty", "Faria Abdullah"]), Movie(moviename: "3 Idiots", image: UIImage(named: "idiots")!, yearofrelease: "2009", movieRating: "4.9", collections: "400 crore", moviedescription: "In college, Farhan and Raju form a great bond with Rancho due to his positive and refreshing outlook to life. Years later, a bet gives them a chance to look for their long-lost friend", cast: ["Amir Kahan", "Sharma Joshi", "R. Madhavan"]), Movie(moviename: "F2: Fun and Frustration", image: UIImage(named: "f2")!, yearofrelease: "2019", movieRating: "4.6", collections: "130 crore", moviedescription: "Venky and Varun are caught by police. As they are interrogated by Indian Embassy officer Viswanath, Venky begins narrates his past. Venky works as a PA to local MLA in Hyderabad but earns handsomely.", cast: ["Venkatesh", "Varun Tej", "Tamannaah", "Mehreen Pirzada"]), Movie(moviename: "Raja The Great", image: UIImage(named: "raja")!, yearofrelease: "2017", movieRating: "4.5", collections: "53 Cr", moviedescription: "Lucky is a very protected and pampered daughter of a sincere police officer, SP Prakash. In one of his operations, Prakash encounters the brother of a powerful gangster named Devaraj, for which Lucky was one of the reasons.", cast: ["Ravi Teja", "Mehreen Pirzada"]), Movie(moviename: "Chennai Express", image: UIImage(named: "chennai")!, yearofrelease: "2014", movieRating: "4.8", collections: "4.23 billion", moviedescription: "A man's trip to fulfill his late grandfather's last wish turns into an unexpected adventure when he meets a unique young woman from southern India.", cast: ["Sharuk Khan", "Deepika Padukone"])])

let c2: Genre = Genre(category: "Romance", movies: [Movie(moviename: "Geetha Govindam", image: UIImage(named: "geetha")!, yearofrelease: "2018", movieRating: "4.9", collections: "132.61 cr", moviedescription: "Vijay meets Nithya on the road at night, where he is sitting alone and sad. Nithya's car breaks down and she asks him for help, he says only if she gives him alcohol and if she will listen to his story. Seeing him as a non-alcoholic, she asks if it is a love story. To which he tells her his story.", cast: ["Vijay Deverakonda", "Rashmika Mandanna"]), Movie(moviename: "Tholi Prema", image: UIImage(named: "tholi")!, yearofrelease: "2018", movieRating: "4.8", collections: "45.1 cr", moviedescription: "Aadi is searching frantically for a missing girl in London. Dejected, Adi sits by the River Thames and starts talking about how he is successful at work but his love life is a complete failure.", cast: ["Varun Tej", "Rashi khanna"]), Movie(moviename: "Devdas", image: UIImage(named: "devdas")!, yearofrelease: "2002", movieRating: "4.8", collections: "998.8 million", moviedescription: "Devdas and Paro are in love and hope to marry, but Devdas' dad has other plans", cast: ["Sharuk Khan", "Madhuri Dixit", "Aishwarya Rai"]), Movie(moviename: "Raadhe Shyam", image: UIImage(named: "radhe")!, yearofrelease: "2022", movieRating: "4.5", collections: "215 CR", moviedescription: "A romantic drama between destiny and love", cast: ["Prabhas", "Pooja Hegde"]), Movie(moviename: "Kaatru Veliyidai", image: UIImage(named: "cheliya")!, yearofrelease: "2017", movieRating: "4.7", collections: "117.8 million", moviedescription: "The film begins with a shot of the Kargil War showing the advances made by Indian soldiers. An Indian Air Force fighter jet is shot down by the enemy.", cast: ["Karthi", "Aditi Rao Hydari"])])

let c3: Genre = Genre(category: "Action", movies: [Movie(moviename: "Baahubali", image: UIImage(named: "baahu")!, yearofrelease: "2015", movieRating: "4.6", collections: "475.5 cr", moviedescription: " one brother is fighting for the crown of the kingdom and another is fighting for the welfare of the people", cast: [" Prabhas", "Rana daggubati"]), Movie(moviename: "Rangasthalam", image: UIImage(named: "ranga")!, yearofrelease: "2018", movieRating: "4.7", collections: "200.48 Cr", moviedescription: "A slightly deaf person who does pumping for the irrigation fields who starts asking questions to the president will make the scenes very serious", cast: ["ramcharan", "samantha"]), Movie(moviename: "Gentleman", image: UIImage(named: "gentleman")!, yearofrelease: "2016", movieRating: "4.7", collections: "326 Million", moviedescription: "The film narrates the story of two women, Aishwarya and Catherine, whose respective lovers, Jayaram and Gautham, are lookalikes. When Gautham dies in an accident, Catherine suspects Jai's role in it and spies on him, which reveals further truths about Jai and the people around him", cast: ["Nani", "Surbhi", "Nivetha Thomas"]), Movie(moviename: "Chatrapathi", image: UIImage(named: "chatrapathi")!, yearofrelease: "2005", movieRating: "4.9", collections: "24 Cr", moviedescription: "A woman loves both her sons equally but her biological son hates his adopted brother. One day, they along with the other villagers are forced to evacuate and the adopted son is separated from them. He grows up with an aim to find them.", cast: ["Prabhas", "Shriya Saran"]), Movie(moviename: "RRR", image: UIImage(named: "rrr")!, yearofrelease: "2022", movieRating: "4.9", collections: "1100 Cr", moviedescription: "A tale of two legendary revolutionaries and their journey far away from home. After their journey they return home to start fighting back against British colonialists in the 1920s", cast: ["NTR","Ram Charan"])])


let categoryArray = [c1, c2, c3]

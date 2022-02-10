//
//  ViewController.swift
//  CourseDisplayApp3
//
//  Created by Veeravelly,Sai Krishna on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DsiplayImage: UIImageView!
    
    
    @IBOutlet weak var crsNum: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    
    
    @IBOutlet weak var crssem: UILabel!
    
    @IBOutlet weak var previousButton: UIButton!
    
    
    @IBOutlet weak var NextButton: UIButton!
    
    let courses = [["img01", "44555", "Network security", "Fall 2022"],["img02", "44643", "IOS", "Spring 2022"],["img03","44656", "Data Straming", "Fall 2022"]]
    
    var imageNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //the details of the course(image,crsNum,crstitle,crssem) in 0th position is displayed
    
        updateUI(imageNum: imageNumber)
        
        //The previous button should be disabled
        previousButton.isEnabled = false
    }


    @IBAction func PreviousButtonClicked(_ sender: UIButton) {
        
        //next button should be enabled
        
        NextButton.isEnabled = true
        
        // update the course details by decrementing image number
        imageNumber -= 1
        updateUI(imageNum: imageNumber)
        //once you reach the begining of the array,previous button should be disabled
        if(imageNumber == 0){
            previousButton.isEnabled =  false
        }
    }
    
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        //update the UI of next course  by incrementing image number
        imageNumber += 1
        updateUI(imageNum: imageNumber)
        //previous button should be enabled
        
        previousButton.isEnabled = true
        
        //once the user reached the end of array, the next button should be disabled.
        if(imageNumber == courses.count-1)
        {
            NextButton.isEnabled = false
        }
    }
    
    func updateUI(imageNum:Int){
        DsiplayImage.image = UIImage(named:courses[imageNum][0])
        crsNum.text=courses[imageNum][1]
        crsTitle.text=courses[imageNum][2]
        crssem.text=courses[imageNum][3]
        
    }
    
}


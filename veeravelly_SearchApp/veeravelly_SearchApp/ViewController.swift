//
//  ViewController.swift
//  veeravelly_SearchApp
//
//  Created by Veeravelly,Sai Krishna on 3/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var showNextImages: UIButton!
    
    @IBOutlet weak var showPrevImages: UIButton!
    
    @IBOutlet weak var ResetButton: UIButton!
    
    @IBOutlet weak var SearchButton: UIButton!
    
    var imageNumber = 0
    
    var topic = 1
    
 let arr = [["cumberbatch","harington","holland","prabas","robert"],["elephant","lion","panda","tiger","zebra"],["frangipani","lotus","magnolia","rose","sunflower"]]
    
    let actors_keywords = ["cumberbatch","harington","holland","prabas","robert"]
    
    var animal_keywords = ["elephant","lion","panda","tiger","zebra"]
    
    var flower_keywords = ["frangipani","lotus","magnolia","rose","sunflower"]
    
    let actors_array = ["Cumberbatch has narrated numerous documentaries for the National Geographic and Discovery channels. He has also read for several audiobooks, including Casanova, The Tempest, The Making of Music, Death in a White Tie, Artists in Crime, Tom and Viv, and Sherlock Holmes: The Rediscovered Railway Mysteries and Other Stories", "Harington received critical praise for his portrayal of Snow. In 2012, he was nominated for a Saturn Award for Best Supporting Actor on Television for the role.[28] In 2016, Harington was nominated for a Primetime Emmy Award for Outstanding Supporting Actor in a Drama Series.[29] In 2017, Harington had reportedly become one of the highest-paid actors on television, earning £2 million per episode of Game of Throne", "Holland's career began when he enrolled in a dancing class and was noticed by a choreographer. With his help and after extensive training, Holland bagged his first role in Billy Elliot the Musical at London's Victoria Palace Theatre in 2008. Later that year, he was upgraded to the title role, which he played until 2010", "Prabhas made his acting debut with the 2002 Telugu drama Eeswar, and later attained his breakthrough with the romantic action film Varsham (2004). His notable works include Chatrapathi (2005), Bujjigadu (2008), Billa (2009), Darling (2010), Mr. Perfect (2011), and Mirchi (2013). He won the state Nandi Award for Best Actor for his performance in Mirchi","Robert John Downey Jr. (born April 4, 1965)[1] is an American actor and producer. His career has been characterized by critical and popular success in his youth, followed by a period of substance abuse and legal troubles, before a resurgence of commercial success later in his career"
    ]
    
    var animal_array = ["Elephants are the largest existing land animals. Three living species are currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant", "The lion is a large cat of the genus Panthera native to Africa and India. It has a muscular, deep-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail", "The giant panda, also known as the panda bear, is a bear species endemic to China. It is characterised by its bold black-and-white coat and rotund body", "The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside", "Zebras are African equines with distinctive black-and-white striped coats. There are three living species: the Grévy's zebra, plains zebra, and the mountain zebra"
    ]
    
    var flower_array = ["frangipani, (genus Plumeria), also called plumeria, genus of about 12 species of deciduous shrubs or small trees in the dogbane family (Apocynaceae), native to the New World tropics", "Nelumbo nucifera, also known as Indian lotus, sacred lotus, or simply lotus, is one of two extant species of aquatic plant in the family Nelumbonaceae", "Magnolia is a large genus of about 210 flowering plant species in the subfamily Magnolioideae of the family Magnoliaceae", "A rose is a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears", "Helianthus is a genus comprising about 70 species of annual and perennial flowering plants in the daisy family Asteraceae" ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(imageNumber)
        // Do any additional setup after loading the view.
    }

    @IBAction func searchButtonAction(_ sender: UIButton) {
        
        //searchInput = searchTextField.text!
                
                if(actors_keywords.contains(searchTextField.text!)){
                    
                    resultImage.image = UIImage(named: actors_keywords[0])
                   
                    
                
                }
                
                if(animal_keywords.contains(searchTextField.text!)){
                    
                    resultImage.image = UIImage(named: animal_keywords[0])
                }
                
                if(flower_keywords.contains(searchTextField.text!)){
                    
                    resultImage.image = UIImage(named: flower_keywords[0])
                }
    }
    
    func updateUI(_ imageNum: Int){
            if(actors_keywords.contains(searchTextField.text!)){
                resultImage.image = UIImage(named: actors_keywords[imageNum])
            }
            
            if(animal_keywords.contains(searchTextField.text!)){
                resultImage.image = UIImage(named: animal_keywords[imageNum])
            }
            
            if(flower_keywords.contains(searchTextField.text!)){
                resultImage.image = UIImage(named: flower_keywords[imageNum])
            }
        }
    @IBAction func showNextImagesBtn(_ sender: UIButton) {
        imageNumber += 1
                        updateUI(imageNumber)
        showPrevImages.isEnabled = true
                
                if(imageNumber == actors_keywords.count-1){
                    showNextImages.isEnabled = false
                        }
                
                if(imageNumber == animal_keywords.count-1){
                    showNextImages.isEnabled = false
                        }
                
                if(imageNumber == flower_keywords.count-1){
                    showNextImages.isEnabled = false
                        }

    }
    
    @IBAction func ShowPrevImagesBtn(_ sender: UIButton) {
        
        showNextImages.isEnabled = true
                        imageNumber -= 1
                        updateUI(imageNumber)
                        
                        if(imageNumber == 0){
                            showPrevImages.isEnabled = false
                        }
    }
    
    @IBAction func ResetButtonClicked(_ sender: UIButton) {
        
        showPrevImages.isHidden = true
        showNextImages.isHidden = true
//        resultImage.image = UIImage(named: arr[3][0])
        topicInfoText.text = nil
        //imageName.text = nil
        searchTextField.text = nil
        ResetButton.isHidden = true
        
    }
    
}


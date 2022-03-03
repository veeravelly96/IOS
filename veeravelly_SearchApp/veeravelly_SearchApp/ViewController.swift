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
    
 let arr = [["jrntr","prabhas","maheshbabu","pawankalyan","balakrishna"],["frangipani","lotus","magnolia","rose","sunflower"],["lion","elephant","rhino","buffalo","leopard"],["bg","404"]]
    
    let actors_keywords = ["jrntr","prabhas","maheshbabu","pawankalyan","balakrishna"]
    
    var animal_keywords = ["lion","elephant","rhino","buffalo","leopard"]
    
    var flower_keywords = ["frangipani","lotus","magnolia","rose","sunflower"]
    
    let actors_array = [["Jr NTR","Prabhas","Mahesh Babu","Pawan Kalyan","Balakrishna"],["Nandamuri Taraka Rama Rao Jr. (born 20 May 1983), also known as Jr NTR or Tarak, is an Indian actor, singer, and television presenter who works in Telugu cinema. In his film career spanning 20 years, he has worked in over 30 films. Popularly referred as Young Tiger of Tollywood, Rama Rao has received two state Nandi Awards, two Filmfare Awards South and four CineMAA Awards. One of the highest paid Telugu film actors, he was ranked 28th in Forbes India Celebrity 100 list in 2018.","Uppalapati Venkata Suryanarayana Prabhas Raju (born 23 October 1979), known mononymously as Prabhas, is an Indian actor who works predominantly in Telugu cinema. One of the highest-paid actors in Indian cinema, Prabhas has featured in Forbes India's Celebrity 100 list three times since 2015 based on his income and popularity. He has received seven Filmfare Awards South nominations and is a recipient of the Nandi Award and the SIIMA Award.","Ghattamaneni Mahesh Babu (born 9 August 1975) is an Indian actor, producer, media personality, and philanthropist who works mainly in Telugu cinema. He has appeared in more than 25 films, and won several accolades including, eight Nandi Awards, five Filmfare South Awards, four South Indian International Movie Awards, three CineMAA Awards, and one IIFA Utsavam Award. He also owns the production house G. Mahesh Babu Entertainment.","Pawan Kalyan (born Konidela Kalyan Babu, 2 September 1968) is an Indian actor, director, screenwriter, stunt coordinator, philanthropist, and politician. His films are predominantly in Telugu cinema. Kalyan is the younger brother of actor-politician Chiranjeevi, and made his debut in the 1996 film Akkada Ammayi Ikkada Abbayi. He starred in Tholi Prema in 1998, which won the National Film Award for Best Feature Film in Telugu that year.","Nandamuri Balakrishna (born 10 June 1960), mononymously known as Balakrishna or Balayya, is an Indian actor, producer and politician. He appeared in more than 100 Telugu films over forty years in a variety of roles and established himself as one of the leading actors of Telugu cinema. He won three Nandi Awards and one South Indian International Movie Award. He is an elected member of the Andhra Pradesh Legislative Assembly from Hindupur constituency since 2019."]]
    
    var animal_array = [["African bush elephant","Black rhinoceros","African buffalo","Lion","Leopard"],["The African bush elephant (Loxodonta africana) is a very large herbivore with thick, almost hairless skin; a long, flexible, prehensile trunk; upper incisors forming long, curved, ivory tusks; and large, fan-shaped ears. Its closest living relative is the African forest elephant (Loxodonta cyclotis).","The black rhinoceros (Diceros bicornis) is a large herbivore with two upright horns on its nasal bridge. Its thick (1.5–5 cm), protective skin is formed from layers of collagen arranged in a lattice structure, and is very hard to puncture. Because it is now critically endangered, hunting is extremely limited.","The African buffalo (Syncerus caffer) is a large horned bovid. It is the only animal among the Big Five that is not on the “endangered” or “threatened” list.[11] The Cape buffalo (Syncerus caffer caffer) is considered by many to be the most dangerous to hunters of any of the Big Five.","The lion (Panthera leo) is a large, carnivorous feline found in Africa and northwest India. It has a short, tawny coat; a tufted tail; and, in the male, a heavy mane around the neck and shoulders. Lions are desirable to hunters because of the very real danger involved in hunting them.","The leopard (Panthera pardus) is a large, carnivorous feline. Its fur may be either black, or tawny with dark rosette-shaped markings. The leopard is considered the most difficult of the Big Five to hunt because of its nocturnal habits (it is most active between sunset and sunrise, although it may hunt during the day in some areas."]]
    
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


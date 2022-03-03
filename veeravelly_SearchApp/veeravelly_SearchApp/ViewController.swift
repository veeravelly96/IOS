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
    
    
    
 let arr = [["player1","player2","player3","player4","player5"],["place1","place2","place3","place4","place5"],["actor1","actor2","actor3","actor4","actor5",],["bg","404"]]
    
    
    var players = ["player","players","cricketer","cricket","dhoni","raina","jadeja","kohli","ashwin","celebrity","batsmen","match"]
        
    var places = ["places","place","goa","kerala","hyderabad","shimla","amritsar","journey","roam","memories","travelling"]
    let actors = ["actor","actors","hero","tollywood","jrntr","prabhas","maheshbabu","pawankalyan","balakrishna","celebrity","hero","film"]
    
        var topic = 0
        var imag1:Int!
        var imag2:Int!
        var imag3:Int!
        var text1:Int!
        var text2:Int!
        var text3:Int!


    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showPrevImages.isHidden = true
        showNextImages.isHidden = true
                SearchButton.isEnabled = false
                ResetButton.isHidden = true
                resultImage.image = UIImage(named: arr[3][0])
                topicInfoText.text = nil

        
    }
    @IBAction func searchTextField(_ sender: UITextField) {
        
        SearchButton.isEnabled = true
                if(sender.text == ""){
                    SearchButton.isEnabled = false
                    
                }
                else{
                    showPrevImages.isEnabled = false
                    showNextImages.isEnabled = false
                    SearchButton.isEnabled = true
                    ResetButton.isHidden = true
                }
         
    }
    
    
    
    var player = [["dhoni","raina","jadeja","kohli","ashwin"],["Mahendra Singh Dhoni (born 7 July 1981) is a former international cricketer who played as a right-handed wicketkeeper batsman . His power hitting ability and offensive batting style made his reputation as a finisher. He is widely considered as one of the greatest white ball cricket captain ever. He captained the Indian national cricket team in limited-overs formats from 2007 to 2017 and in Test cricket from 2008 to 2014.","Suresh raina is a indian player left hander batsmen","jadeja is an indian cricket player has an ability to bowl","kohli is an indian cricket player and he is a right handed batsman","ashwin is indian cricket player and he is an right handed spinner "]]
        
        
    var place = [["goa","kerala","hyderabad","shimla","amritsar"],["Goa is a state on the southwestern coast of India within the Konkan region, geographically separated from the Deccan highlands by the Western Ghats.","Kerala, southwestern coastal state of India. It is a small state, constituting only about 1 percent of the total area of the country.","Hyderabad, city, Telangana state, south-central India. It is Telangana’s largest and most-populous city and is the major urban centre for all of south-central interior India. From 1956 to 2014 Hyderabad was the capital of Andhra Pradesh state, but, with the creation of Telangana from Andhra Pradesh in 2014, it was redesignated as the capital of both states.","Shimla, formerly Simla,  city, capital of Himachal Pradesh state, northwestern India. The city lies northeast of Chandigarh on a ridge of the Himalayan foothills, at an elevation of about 7,100 feet (2,200 metres).","Amritsar historically also known as Rāmdāspur and colloquially as Ambarsar, is the second largest city in the Indian state of Punjab, after Ludhiana"]]

    let actor = [["jrntr","prabhas","maheshbabu","pawankalyan","balakrishna"],["Nandamuri Taraka Rama Rao Jr. (born 20 May 1983), also known as Jr NTR or Tarak, is an Indian actor, singer, and television presenter who works in Telugu cinema. In his film career spanning 20 years, he has worked in over 30 films. Popularly referred as Young Tiger of Tollywood, Rama Rao has received two state Nandi Awards, two Filmfare Awards South and four CineMAA Awards. One of the highest paid Telugu film actors, he was ranked 28th in Forbes India Celebrity 100 list in 2018.","Uppalapati Venkata Suryanarayana Prabhas Raju (born 23 October 1979), known mononymously as Prabhas, is an Indian actor who works predominantly in Telugu cinema. One of the highest-paid actors in Indian cinema, Prabhas has featured in Forbes India's Celebrity 100 list three times since 2015 based on his income and popularity. He has received seven Filmfare Awards South nominations and is a recipient of the Nandi Award and the SIIMA Award.","Ghattamaneni Mahesh Babu (born 9 August 1975) is an Indian actor, producer, media personality, and philanthropist who works mainly in Telugu cinema. He has appeared in more than 25 films, and won several accolades including, eight Nandi Awards, five Filmfare South Awards, four South Indian International Movie Awards, three CineMAA Awards, and one IIFA Utsavam Award. He also owns the production house G. Mahesh Babu Entertainment.","Pawan Kalyan (born Konidela Kalyan Babu, 2 September 1968) is an Indian actor, director, screenwriter, stunt coordinator, philanthropist, and politician. His films are predominantly in Telugu cinema. Kalyan is the younger brother of actor-politician Chiranjeevi, and made his debut in the 1996 film Akkada Ammayi Ikkada Abbayi. He starred in Tholi Prema in 1998, which won the National Film Award for Best Feature Film in Telugu that year.","Nandamuri Balakrishna (born 10 June 1960), mononymously known as Balakrishna or Balayya, is an Indian actor, producer and politician. He appeared in more than 100 Telugu films over forty years in a variety of roles and established himself as one of the leading actors of Telugu cinema. He won three Nandi Awards and one South Indian International Movie Award. He is an elected member of the Andhra Pradesh Legislative Assembly from Hindupur constituency since 2019."]]
    
    
    
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        imag1 = 0
        imag2 = 0
        imag3 = 0
        text1 = 0
        text2 = 0
        text3 = 0
        showPrevImages.isHidden = false
        showNextImages.isHidden = false
        showPrevImages.isEnabled = false
        showNextImages.isEnabled = false
        ResetButton.isHidden = false
        if(players.contains(searchTextField.text!)){
            showNextImages.isEnabled = true
            showPrevImages.isEnabled = false
            resultImage.image = UIImage(named: arr[0][imag1])
            topic = 1
            topicInfoText.text = player[1][text1]
        }
        else if(places.contains(searchTextField.text!)){
            showNextImages.isEnabled = true
            showPrevImages.isEnabled = false
            resultImage.image = UIImage(named: arr[1][imag2])
            topic = 2
            topicInfoText.text = place[1][text2]
        }
        else if(actors.contains(searchTextField.text!)){
            showNextImages.isEnabled = true
            showPrevImages.isEnabled = false
            resultImage.image = UIImage(named: arr[2][imag3])
            topic = 3
            topicInfoText.text = actor[1][text3]
        }
        else{
            resultImage.image = UIImage(named: arr[3][1])
            topicInfoText.text = nil
            showPrevImages.isHidden = true
            showNextImages.isHidden = true
            ResetButton.isEnabled = true
        }
        

       
    }
    
    
    @IBAction func showNextImagesBtn(_ sender: UIButton) {
        if(topic == 1){
                    imag1 += 1
                    text1 += 1
                    dataUpdate(imgNo: imag1)
                }
                if(topic == 2){
                    imag2 += 1
                    text2 += 1
                    dataUpdate(imgNo: imag2)
                }
                if(topic == 3){
                    imag3 += 1
                    text3 += 1
                    dataUpdate(imgNo: imag3)
                }


    }
    
    @IBAction func ShowPrevImagesBtn(_ sender: UIButton) {
        if(topic == 1){
                    imag1 -= 1
                    text1 -= 1
                    dataUpdate(imgNo: imag1)
                }
                if(topic == 2){
                    imag2 -= 1
                    text2 -= 1
                    dataUpdate(imgNo: imag2)
                }
                if(topic == 3){
                    imag3 -= 1
                    text3 -= 1
                    dataUpdate(imgNo: imag3)
                }

       
    }
    
    @IBAction func ResetButtonClicked(_ sender: UIButton) {
        
                showPrevImages.isHidden = true
                showNextImages.isHidden = true
                topicInfoText.text = nil
                searchTextField.text = nil
                ResetButton.isHidden = true
                resultImage.image = UIImage(named: arr[3][0])
                imag1 = 0
                imag2 = 0
                imag3 = 0
                text1 = 0
                text2 = 0
                text3 = 0
                topic = 0
                

        
        
    }
    func dataUpdate(imgNo: Int){
            if(topic == 1){
                if imag1 == arr[0].count-1 {
                    showNextImages.isEnabled = false
                    showPrevImages.isEnabled = true
                    resultImage.image = UIImage(named: arr[0][imag1])
                    topicInfoText.text = player[1][text1]
                }
                else if(imag1 == 0){
                    showPrevImages.isEnabled = false
                    showNextImages.isEnabled = true
                    resultImage.image = UIImage(named: arr[0][imag1])
                    topicInfoText.text = player[1][text1]
                }
                else{
                    showNextImages.isEnabled = true
                    showPrevImages.isEnabled = true
                    resultImage.image = UIImage(named: arr[0][imag1])
                    topicInfoText.text = player[1][text1]
                }
            }
            if(topic == 2){
                if imag2 == arr[1].count-1 {
                    showNextImages.isEnabled = false
                    showPrevImages.isEnabled = true
                    resultImage.image = UIImage(named: arr[1][imag2])
                    topicInfoText.text = place[1][text2]
                }
                else if(imag2 == 0){
                    showPrevImages.isEnabled = false
                    showNextImages.isEnabled = true
                    resultImage.image = UIImage(named: arr[1][imag2])
                    topicInfoText.text = place[1][text2]
                }
                else{
                    showNextImages.isEnabled = true
                    showPrevImages.isEnabled = true
                    resultImage.image = UIImage(named: arr[1][imag2])
                    topicInfoText.text = place[1][text2]
                    
                }
            }
            if(topic == 3){
                if imag3 == arr[2].count-1 {
                    showNextImages.isEnabled = false
                    showPrevImages.isEnabled = true
                    resultImage.image = UIImage(named: arr[2][imag3])
                    topicInfoText.text = actor[1][text3]
                }
                else if(imag3 == 0){
                    showPrevImages.isEnabled = false
                    showNextImages.isEnabled = true
                    resultImage.image = UIImage(named: arr[2][imag3])
                    topicInfoText.text = actor[1][text3]
                }
                else{
                    showNextImages.isEnabled = true
                    showPrevImages.isEnabled = true
                    resultImage.image = UIImage(named: arr[2][imag3])
                    topicInfoText.text = actor[1][text3]
                    
                }
            }

    
}

}

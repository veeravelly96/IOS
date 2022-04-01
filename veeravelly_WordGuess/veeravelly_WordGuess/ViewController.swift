//
//  ViewController.swift
//  veeravelly_WordGuess
//
//  Created by student on 3/31/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsMissedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    
    @IBOutlet weak var hintLabel: UILabel!
    

    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var guessaletter: UIButton!
    
    
    @IBOutlet weak var imageviewLabel: UIImageView!
    
    var arraywords = [["BOOKS","Used to read"],
                        ["Bat","used to play"],["CAR","Used to travel"],["GAS","used as fuel"],["KNIFE","used for cutting"]]
    
    var guess = ""
    var imagesnames = ["book","Bat","car","gas","knife","try"]
    var l = ""
    var wordIterator = 0
    var guessedletcount = ""
    let maxNumOfWrongGuesses  = 10
    var guessleft = 10
    var count = 0
    var guessedwords = 0
    var wronginputs = 0
    var tryvariable=0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        l = arraywords[wordIterator][0]
        guess = arraywords[wordIterator][1]
        hintLabel.text = "HINT: " + guess;
        wordsGuessedLabel.text = "Total number of words Guessed  succesfully:0"
        wordsMissedLabel.text = "Total number of words guessed wrongly : 0"
        totalWordsLabel.text = "Total number of words in the game: \(arraywords.count)"
        wordsRemainingLabel.text = "Total number of words remaining in the game: \(arraywords.count)"
        guessCountLabel.text = "You have Made 0 guesses"
        guesslabelouput()
        guessaletter.isEnabled = false
        
        playAgainButton.isHidden = true
    }
    func updateoutputs(){
        
        wordsMissedLabel.text = "Total number of words guessed wrongly :\(wronginputs)"
        wordsGuessedLabel.text = "Total number of words Guessed  succesfully: \(guessedwords)"
        
        wordsRemainingLabel.text = "Total number of words remaining in the game:\(arraywords.count - (guessedwords + wronginputs))"
    }
   
    func guesslabelouput() {
        var ouput = ""
        guessedletcount += guessLetterField.text!
        
        for letter in l {
            if guessedletcount.contains(letter) {
                ouput = ouput + " \(letter)"
            } else {
                ouput += " _"
            }
        }
        ouput.removeFirst()
        userGuessLabel.text = ouput
    }
    
    func guessmethod(){
        
        guessLetterField.resignFirstResponder()
        
        guessLetterField.text = ""
    }
    
    
    func guesslettermethod() {
        guesslabelouput()
        count += 1
        
        
        let letterguessed = guessLetterField.text!
        
        if !l.contains(letterguessed) {
            
            guessleft = guessleft - 1
            
        }
        
        let outputword = userGuessLabel.text!
        
        if guessleft == 0 {
            
            playAgainButton.isHidden = false
            guessaletter.isEnabled = false
            guessLetterField.isEnabled = false
           // tryvariable+=1
            guessCountLabel.text = "You have used all the available guesses, Please start again” "
            wronginputs += 1
            updateoutputs()
            updateImageView()
        } else if !outputword.contains("_") {
           
            playAgainButton.isHidden = false
            guessaletter.isEnabled = false
            guessLetterField.isEnabled = false
            guessCountLabel.text = "You won,it took you \(count) attempts to guesses the word!"
            hintLabel.text = "HINT: A game played";

            guessedwords += 1
            updateoutputs()
            updateImageView()
        } else {
            // Update our guess count
            //let guess = ( count == 1 ? "Guess" : "Guesses")
            guessCountLabel.text = "You have Made \(count) guesses"
        }
        
        if (guessedwords + wronginputs) == arraywords.count {
            guessCountLabel.text = "Congratulations, You are done, Please start over again "
            updateImageView()
        }
    }
    
   
    @IBAction func guessLetterFieldChanged(_ sender: UITextField) {
        if let letterGuessed = guessLetterField.text?.last {
            guessLetterField.text = "\(letterGuessed)"
            guessLetterField.isEnabled = true
        } else {
            
            guessaletter.isEnabled = false
        }
    }
    
    
    
    @IBAction func doneKeypressed(_ sender: UITextField) {
        guesslettermethod()
        guessmethod()
        let letter = guessLetterField.text
        if letter?.isEmpty == true{
            guessaletter.isEnabled = false
        }
        else{
            guessaletter.isEnabled = true
        }
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        guesslettermethod()
        guessmethod()
        let letter = guessLetterField.text
        if letter?.isEmpty == true{
            guessaletter.isEnabled = false
        }
        else{
            guessaletter.isEnabled = true
        }
        
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        imageviewLabel.isHidden = true
        wordIterator += 1
        if wordIterator == arraywords.count {
            wordIterator = 0
            guessedwords = 0
            wronginputs = 0
            updateoutputs()
        }
        l = arraywords[wordIterator][0]
        guess = arraywords[wordIterator][1]
        hintLabel.text = "HINT: " + guess
        
        playAgainButton.isHidden = true
        guessLetterField.isEnabled = true
        guessaletter.isEnabled = false
        
        guessleft = maxNumOfWrongGuesses
        guessedletcount = ""
        guesslabelouput()
        guessCountLabel.text = "You have Made 0 Guesses"
        count = 0
    }
    
    func updateImageView(){
        var count=0
        if(guessleft==0){
             count = wordIterator
            wordIterator=5
        }
        imageviewLabel.isHidden = false
        imageviewLabel.image = UIImage(named: imagesnames[wordIterator])
        let originalImageFrame = imageviewLabel.frame
        let widthShrink: CGFloat = 10
        let heightShrink: CGFloat = 10
        let newFrame = CGRect(
        x: imageviewLabel.frame.origin.x + widthShrink,
        y: imageviewLabel.frame.origin.y + heightShrink,
        width: imageviewLabel.frame.width - widthShrink,
        height: imageviewLabel.frame.height - heightShrink)
        imageviewLabel.frame = newFrame
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10.0,  animations: {
            self.imageviewLabel.frame = originalImageFrame
        })
        if(guessleft==0){
            wordIterator = count
        }
    }
    
}


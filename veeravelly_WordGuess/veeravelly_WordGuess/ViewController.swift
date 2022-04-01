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
    
    
    @IBOutlet weak var guessLetterButton: UIButton!
    
    @IBOutlet weak var hintLabel: UILabel!
    

    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    
    
    @IBOutlet weak var imageviewLabel: UIImageView!
    
    var images =  ["bat","books","Car","gas","knife"]
    let maxNoOfWrongGuesses = 10
    var guessesremained = 11
    var hintWord = ""
    var wordGuess = ""
    var guessCount = 0
    var wordsGuessed = 0
    var wordsMissed = 0
    var guessedLetters = ""
    var indexOfWord = 0
    var arr = [["BAT","used for batting"],["BOOKS","used for reading"],["CAR","used for transportation"],["GAS","used as fuel for car"],["KNIFE","used to kill"]]
    var count = 0;
    var word = ""
    var lettersGuessed = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        wordGuess = arr[indexOfWord][0]
        hintWord = arr[indexOfWord][1]
        hintLabel.text = "HINT: " + hintWord
        totalWordsLabel.text = "Total number of words in game: \(arr.count)"
        wordsRemainingLabel.text = "Total number of words remaining in game: \(arr.count)"
        formatWordField()
        guessLetterButton.isEnabled = false
        playAgainButton.isHidden = true
    }
    
   
    @IBAction func guessLetterFieldButton(_ sender: Any) {
        
        if let letterGuessed = guessLetterField.text?.last {
            guessLetterField.text = "\(letterGuessed)"
            guessLetterButton.isEnabled = true
        } else {
            
            guessLetterButton.isEnabled = false
        }
        
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        letterGuessed()
        updateInterfaceAfterGuess()
        let letter = guessLetterField.text
        if letter?.isEmpty == true{
            guessLetterButton.isEnabled = false
        }
        else{
            
            guessLetterButton.isEnabled = true
        }
        
    }
    
    
    
  
    
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        imageviewLabel.isHidden = true
        indexOfWord += 1
        if indexOfWord == arr.count {
            indexOfWord = 0
            wordsGuessed = 0
            wordsMissed = 0
            updateCount()
        }
        wordGuess = arr[indexOfWord][0]
        hintWord = arr[indexOfWord][1]
        hintLabel.text = "HINT: " + hintWord
        playAgainButton.isHidden = true
        guessLetterField.isEnabled = true
        guessLetterButton.isEnabled = false
        guessesremained = maxNoOfWrongGuesses + 1
        guessedLetters = ""
        formatWordField()
        guessCountLabel.text = "You have Made Zero Guessess"
        guessCount = 0
    }
    
    func updateImages(){
        if(guessesremained == 0){
            imageviewLabel.isHidden = false
            imageviewLabel.image = UIImage(named: images[5])
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
        }
        else{
            imageviewLabel.isHidden = false
            imageviewLabel.image = UIImage(named: images[indexOfWord])
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
        }
        
    }
    
    func updateCount(){
        wordsMissedLabel.text = "Total number of words guessed wrongly: \(wordsMissed)"
        wordsGuessedLabel.text = "Total number of words guessed successfully: \(wordsGuessed)"
        wordsRemainingLabel.text = "Total number of words remaining in game: \(arr.count - (wordsGuessed + wordsMissed))"
    }
    
    func updateInterfaceAfterGuess(){
        guessLetterField.resignFirstResponder()
        guessLetterField.text = ""
    }
    
    func formatWordField() {
        var revealedWord = ""
        guessedLetters += guessLetterField.text!
        
        for letter in wordGuess {
            if guessedLetters.contains(letter) {
                revealedWord = revealedWord + " \(letter)"
            } else {
                revealedWord += " _"
            }
        }
        revealedWord.removeFirst()
        userGuessLabel.text = revealedWord
    }
    
    func letterGuessed() {
        formatWordField()
        guessCount += 1
        guessesremained = guessesremained - 1
        let currentLetterGuessed = guessLetterField.text!
        let revealedWord = userGuessLabel.text!
        if guessesremained == 0 {
            playAgainButton.isHidden = false
            guessLetterField.isEnabled = false
            guessLetterButton.isEnabled = false
            guessCountLabel.text = "You have used all the available guesses, Please start again"
            wordsMissed += 1
            updateCount()
            updateImages()
        } else if !revealedWord.contains("_") {
            playAgainButton.isHidden = false
            guessLetterField.isEnabled = false
            guessLetterButton.isEnabled = false
            guessCountLabel.text = "You won! It took you \(guessCount) attempts to guess the word!"
            wordsGuessed += 1
            updateCount()
            updateImages()
        } else {
            let guess = ( guessCount == 1 ? "Guess" : "Guesses")
            guessCountLabel.text = "You have made \(guessCount) \(guess)"
        }
        if (wordsGuessed + wordsMissed) == arr.count {
            guessCountLabel.text = "Congratulations, You are done, Please start over again ?"
            updateImages()
        }
    }
    
    
    
}


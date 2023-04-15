//
//  ViewController.swift
//  App-Pie
//
//  Created by BVU on 4/15/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var treeImgView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
    let incorrectMovesAllowed = 7
    
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    
    var currentGame: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newRound()
    }
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
    func newRound () {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord,
                               incorrectMovesRemaining: incorrectMovesAllowed,
                               guessedLetters: [])
            enableLetterButtons(true)
            updateUI()
        } else {
            enableLetterButtons(false)
        }
    }
    
    /**
     * Update the UI
     * 1. Update wins, losses
     * 2. Update Tree Image
     */
    func updateUI() {
        // TODO: Learn about the map method, and use it in place of the loop that converts the array of characters to an array of strings in updateUI().
        
        // Add space between character for more precious reading
//        var letters = [String]()
//        // This loop
//        for letter in currentGame.formattedWord {
//            letters.append(String(letter))
//        }
//        let wordWithSpacing = letters.joined(separator: " ")
        
//        correctWordLabel.text = currentGame.formattedWord.map($0.append(" "))
        
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImgView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        } else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        } else {
            updateUI()
        }
    }
    
    func enableLetterButtons(_ enable: Bool) {
      for button in letterButtons {
        button.isEnabled = enable
      }
    }
    
}


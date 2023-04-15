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
    
    var totalWins = 0
    var totalLosses = 0
    
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
    }
    
    func newRound () {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(
            word: newWord,
            incorrectMovesRemaining: incorrectMovesAllowed,
            guessedLetters: []
        )
        updateUI()
    }
    
    /**
     * Update the UI,
     */
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImgView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
}


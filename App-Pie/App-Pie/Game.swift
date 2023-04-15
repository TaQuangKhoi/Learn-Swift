//
//  Game.swift
//  App-Pie
//
//  Created by BVU on 4/15/23.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var score: Int
    // TODO: Add a scoring feature that awards points for each correct guess and additional points for each successful word completion.
    
    /**
     * Add the letter to array guessedLetters
     * 
     */
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
    
    /**
     * Check letter in
     */
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
}


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
}


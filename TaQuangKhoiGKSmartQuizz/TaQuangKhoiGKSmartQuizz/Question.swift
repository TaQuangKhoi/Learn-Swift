//
//  Question.swift
//  TaQuangKhoiGKSmartQuizz
//
//  Created by BVU on 5/20/23.
//

import Foundation

struct Question {
    var text: String
    var answers: Array<String> // 4 elements
    var result: Int // Index of Answers
    var image: String // Maybe Emoji
}

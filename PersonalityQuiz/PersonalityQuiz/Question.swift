//
//  Question.swift
//  PersonalityQuiz
//
//  Created by BVU on 5/6/23.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}


//
//  TestType.swift
//  TaQuangKhoiGKSmartQuizz
//
//  Created by BVU on 5/20/23.
//

import Foundation

enum TestType: String {
    case SLOW, NORMAL, FAST
    
    var text: String {
        switch self {
        case .SLOW:
            return "Slow"
        case .NORMAL:
            return "Normal"
        case .FAST:
            return "Fast"
        }
    }
}

struct TestTypeDetail {
    var name: TestType
    var totalQuestions: String
    var totalTime: String
    var timePerQuestion: Int
}

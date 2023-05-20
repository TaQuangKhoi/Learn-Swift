//
//  TestType.swift
//  TaQuangKhoiGKSmartQuizz
//
//  Created by BVU on 5/20/23.
//

import Foundation

enum TestType: String {
    case SLOW, NORMAL, FAST
}

struct TestTypeDetail {
    var name: TestType
    var totalQuestions: Int
    var totalTime: Int
    var timePerQuestion: Int
}

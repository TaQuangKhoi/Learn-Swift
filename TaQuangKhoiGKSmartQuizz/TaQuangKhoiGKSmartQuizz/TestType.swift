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
    var Name: TestType
    var TotalQuestions: Int
    var TotalTime: Int
    var TimePerQuestion: Int
}

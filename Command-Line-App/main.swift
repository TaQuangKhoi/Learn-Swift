//
//  main.swift
//  Learn-Swift
//
//  Created by BVU on 4/1/23.
//

import Foundation

print("Hello, World!")

func LearnDataType() {
    struct Student {
        var firstName : String
        var lastName : String
        
        func WriteFullName() {
            print("My name is \(firstName) \(lastName)")
        }
    }

    let ks = Student(firstName: "Keios", lastName: "Starqua")

    print(ks.WriteFullName())

    let bigNumber : Int = 1_000_000_000_000

    print(bigNumber)
}

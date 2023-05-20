//
//  ViewController.swift
//  TaQuangKhoiGKSmartQuizz
//
//  Created by BVU on 5/20/23.
//

import UIKit

class Screen1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "slowSpeedSegue" {
            let screen2ViewController = segue.destination as! Screen2TableViewController
            
            let speedMode: TestTypeDetail = TestTypeDetail(
                name: .SLOW,
                totalQuestions: "10",
                totalTime: "100",
                timePerQuestion: 10
            )
            
            screen2ViewController.speedMode = speedMode
            
            return
        } else if segue.identifier == "normalSpeedSegue" {
            let screen2ViewController = segue.destination as! Screen2TableViewController
            
            let speedMode: TestTypeDetail = TestTypeDetail(
                name: .SLOW,
                totalQuestions: "10",
                totalTime: "60",
                timePerQuestion: 6
            )
            
            screen2ViewController.speedMode = speedMode
            
            return
        } else if segue.identifier == "fastSpeedSegue" {
            let screen2ViewController = segue.destination as! Screen2TableViewController
            
            let speedMode: TestTypeDetail = TestTypeDetail(
                name: .SLOW,
                totalQuestions: "10",
                totalTime: "30",
                timePerQuestion: 3
            )
            
            screen2ViewController.speedMode = speedMode
            
            return
        }
        
    }

}


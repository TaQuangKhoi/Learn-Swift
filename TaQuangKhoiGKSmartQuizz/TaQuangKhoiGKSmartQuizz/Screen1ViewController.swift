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
//        segue.destination.navigationItem.title = textField.text
        
        if segue.identifier == "slowSpeedSegue" {
            let greenViewController = segue.destination as! Screen2TableViewController
            
            let speedMode: TestTypeDetail = TestTypeDetail(
                name: .SLOW,
                totalQuestions: 10,
                totalTime: 100,
                timePerQuestion: 10
            )
            
            greenViewController.speedMode = speedMode
            
            return
        }
        
    }

}


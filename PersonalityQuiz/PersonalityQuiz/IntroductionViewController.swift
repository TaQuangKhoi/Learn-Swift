//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by BVU on 5/6/23.
//

import UIKit

class IntroductionViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionStartButton(_ sender: Any) {
        performSegue(withIdentifier: "Start", sender: sender)
    }
    
    @IBAction func unwindToQuizIntroduction(segue:
    UIStoryboardSegue) {

    }
    
}


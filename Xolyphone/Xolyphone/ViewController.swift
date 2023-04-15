//
//  ViewController.swift
//  Xolyphone
//
//  Created by BVU on 4/15/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func playSound(animalName: String) {
        guard let path = Bundle.main.path(forResource: animalName, ofType: "wav") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}


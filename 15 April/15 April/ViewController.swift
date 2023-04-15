//
//  ViewController.swift
//  15 April
//
//  Created by BVU on 4/15/23.
//
import AVFoundation

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgAnimal2: UIButton!

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    @IBAction func clickBtnCat(_ sender: Any) {
        
//        if let image = UIImage(named: "cat") {
//            imgAnimal.setImage(image, for: UIControl.State.normal)
//        }
//    }
    
    func playSound() {
        guard let path = Bundle.main.path(forResource: "cat", ofType:"wav") else {
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


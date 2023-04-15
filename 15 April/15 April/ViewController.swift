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

    @IBAction func clickImgAnimal(_ sender: Any) {
        // Get name of image in Buton
    }
    
    
    @IBAction func clickBtnCat(_ sender: Any) {
        let image = UIImage(named: "cat")
        imgAnimal2.setImage(image, for: UIControl.State.normal)
    }
    
    @IBAction func clickBtnDog(_ sender: Any) {
        let image = UIImage(named: "dog")
        imgAnimal2.setImage(image, for: UIControl.State.normal)
    }
    
    @IBAction func clickBtnHorse(_ sender: Any) {
        let image = UIImage(named: "horse")
        imgAnimal2.setImage(image, for: UIControl.State.normal)
    }
    
    @IBAction func clickBtnWolf(_ sender: Any) {
        let image = UIImage(named: "wolf")
        imgAnimal2.setImage(image, for: UIControl.State.normal)
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


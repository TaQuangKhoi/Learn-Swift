//
//  ViewController.swift
//  App-Pie
//
//  Created by BVU on 4/15/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var treeImgView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
}


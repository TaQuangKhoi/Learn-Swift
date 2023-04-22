//
//  GreenViewController.swift
//  TrafficSegues
//
//  Created by BVU on 4/22/23.
//

import UIKit

class GreenViewController: UIViewController {
    
    var name : String!

    @IBOutlet weak var labelWithTextFromPreviousController: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelWithTextFromPreviousController.text = name
    }
}

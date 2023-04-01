//
//  ViewController.swift
//  My-First-iOS-App
//
//  Created by BVU on 4/1/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblHello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblHello.text = "Hi !!!"
        
        lblHello.textColor = UIColor.red
    
    }

    
    
}


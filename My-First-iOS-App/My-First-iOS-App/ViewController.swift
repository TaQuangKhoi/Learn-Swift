//
//  ViewController.swift
//  My-First-iOS-App
//
//  Created by BVU on 4/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblHello: UILabel!
    
    @IBOutlet weak var tfdForLabel: UITextField!
    
    // This btn will change the lblHello base on Text Field
    @IBOutlet weak var btnChangeLabel: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblHello.text = "Hi !!!"
        
        lblHello.textColor = UIColor.red
        
    }
    
    
    // Thay đổi giá trị label khi thay đổi text trong TextField
    @IBAction func tfdEditingChanged(_ sender: UITextField) {
        lblHello.text = tfdForLabel.text
    }
}


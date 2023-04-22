//
//  Red2ViewController.swift
//  TrafficSegues
//
//  Created by BVU on 4/22/23.
//

import UIKit

class Red2ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
        
        if segue.identifier == "redToGreenSegue" {
            let greenViewController = segue.destination as! GreenViewController
            greenViewController.name = textField.text
            
            return
        }
        
        if segue.identifier == "redToPurpleSegue" {
            let purpleViewController = segue.destination as! PurpleViewController
            purpleViewController.name = textField.text
            
            return
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

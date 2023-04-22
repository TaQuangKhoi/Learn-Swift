//
//  PurpleViewController.swift
//  TrafficSegues
//
//  Created by BVU on 4/22/23.
//

import UIKit

class PurpleViewController: UIViewController {
    
    var name : String!

    @IBOutlet weak var lblPurple: UILabel!
    @IBOutlet weak var btnPerformSegue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblPurple.text = name
    }
    

    @IBAction func goToWhiteView(_ sender: Any) {
        performSegue(withIdentifier: "purpleToYellowSegue" , sender: sender)
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

//
//  PurpleViewController.swift
//  TrafficSegues
//
//  Created by BVU on 4/22/23.
//

import UIKit

class PurpleViewController: UIViewController {
    
    var name : String!
    var count : Int = 0

    @IBOutlet weak var lblPurple: UILabel!
    @IBOutlet weak var btnPerformSegue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblPurple.text = name
        
//        let timer = Timer.scheduledTimer(timeInterval: 1.0,
//                                         target: self,
//                                         selector: #selector(self.timerTick),
//                                         userInfo: nil,
//                                         repeats: true)
        
        
    }
    

    @IBAction func goToWhiteView(_ sender: Any) {
        
        
        
        performSegue(withIdentifier: "purpleToYellowSegue" , sender: sender)
    }
    
    func timerTick() {
        count += 1
        lblPurple.text = "\(count)"
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

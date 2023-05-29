//
//  AddEditTopicViewController.swift
//  TaQuangKhoiQuizManagement
//
//  Created by BVU on 5/29/23.
//

import UIKit

class AddEditTopicViewController: UIViewController {
    
    var topic : Topic?
    
    init?(coder: NSCoder, topic: Topic?) {
        self.topic = topic
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

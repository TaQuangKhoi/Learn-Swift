//
//  AddEditTopicViewController.swift
//  TaQuangKhoiQuizManagement
//
//  Created by BVU on 5/29/23.
//

import UIKit

class AddEditTopicViewController: UIViewController {
    
    @IBOutlet weak var topicNameTxtField: UITextField!
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
        
        if let topic = topic {
            topicNameTxtField.text = topic.name
            title = "Edit Emoji"
        } else {
            title = "Add Emoji"
        }

        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        
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

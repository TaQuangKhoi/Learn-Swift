//
//  AddEditTopicViewController.swift
//  TaQuangKhoiQuizManagement
//
//  Created by BVU on 5/29/23.
//

import UIKit
import CoreData

class AddEditTopicViewController: UIViewController {
    
    @IBOutlet weak var topicNameTxtField: UITextField!
    var topic : Topic?
    
    var coreTopic: NSManagedObject?
    
    init?(coder: NSCoder, topic: Topic?, coreTopic: NSManagedObject?) {
        self.topic = topic
        self.coreTopic = coreTopic
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let topic = coreTopic {
            topicNameTxtField.text = topic.value(forKeyPath: "name") as? String
            title = "Edit Topic"
        } else {
            title = "Add Topic"
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "unwindSaveTopicSegue" else { return }

        let name = topicNameTxtField.text ?? ""
        topic = Topic(name: name)
        coreTopic?.setValue(name, forKeyPath: "name")
    }

}

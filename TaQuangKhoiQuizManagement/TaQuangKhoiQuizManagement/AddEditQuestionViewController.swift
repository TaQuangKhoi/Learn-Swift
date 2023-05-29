//
//  AddEditQuestionViewController.swift
//  TaQuangKhoiQuizManagement
//
//  Created by BVU on 5/29/23.
//

import UIKit

class AddEditQuestionViewController: UIViewController {
    
    var question : TopicQuestion?

    @IBOutlet weak var questionNameTF: UITextField!
    
    @IBOutlet weak var answer1TF: UITextField!
    
    @IBOutlet weak var answer2TF: UITextField!
    
    @IBOutlet weak var answer3TF: UITextField!
    
    @IBOutlet weak var answer4TF: UITextField!
    
    @IBOutlet weak var rightAnswerIndex: UITextField!
    
    init?(coder: NSCoder, question: TopicQuestion?) {
        self.question = question
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let question = question {
            questionNameTF.text = question.name
            
            answer1TF.text = question.Answer[0]
            answer2TF.text = question.Answer[1]
            answer3TF.text = question.Answer[2]
            answer4TF.text = question.Answer[3]
            
            questionNameTF.text = question.name
            
            rightAnswerIndex.text = String(question.rightAnswer)
            
            title = "Edit Question"
        } else {
            title = "Add Question"
        }

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

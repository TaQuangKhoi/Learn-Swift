//
//  Screen3ViewController.swift
//  TaQuangKhoiGKSmartQuizz
//
//  Created by BVU on 5/20/23.
//

import UIKit

class Screen3ViewController: UIViewController {
    
    var questionBank: [Question] = [
        Question(text: "1 + 3", answers: ["1", "2", "3", "4"],
                 result: 4, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"Ai hat hat hay nhat lop",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
    ]
    
    var currentQuestions: [Question] = []
    
    var currentQuestionIndex = 0
    
    var currentQuestionAnswer = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var answerLabel: UILabel!
    var speedMode: TestTypeDetail?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.isEnabled = false
        
        get10Question()
        
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    func get10Question() {
//        currentQuestions.removeAll()
        
        let countArray = questionBank.count
        
        var indexUsed: [Int] = []
        
        var countTimes = 10
        
        for _ in 1...countTimes {
            let index = Int.random(in: 1..<countArray)
            if indexUsed.contains(index) {
                countTimes+=1
            } else {
                currentQuestions.append(questionBank[index])
                indexUsed.append(index)
            }
        }
    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
//        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case button1:
            currentQuestionAnswer = 0
            answerLabel.text = currentQuestions[currentQuestionIndex].answers[currentQuestionAnswer]
//            answersChosen.append(currentAnswers[0])
        case button2:
            currentQuestionAnswer = 1
            answerLabel.text = currentQuestions[currentQuestionIndex].answers[currentQuestionAnswer]
//            answersChosen.append(currentAnswers[1])
        case button3:
            currentQuestionAnswer = 2
            answerLabel.text = currentQuestions[currentQuestionIndex].answers[currentQuestionAnswer]
//            answersChosen.append(currentAnswers[2])
        case button4:
            currentQuestionAnswer = 3
            answerLabel.text = currentQuestions[currentQuestionIndex].answers[currentQuestionAnswer]
//            answersChosen.append(currentAnswers[3])
        default:
            break
        }
        
        nextButton.isEnabled = true
    
//        nextQuestion()
    }

    @IBAction func nextQuestion(_ sender: Any) {
        nextQuestion()
    }
    
    func updateUI() {
        
        let currentQuestion = currentQuestions[currentQuestionIndex]
        
//        let totalProgress = Float(currentQuestionIndex) / Float(currentQuestions.count)
        
        questionLabel.text = currentQuestion.text
//        questionProgressView.setProgress(totalProgress, animated:
//            true)
        
        button1.setTitle(currentQuestion.answers[0], for: .normal)
        button2.setTitle(currentQuestion.answers[1], for: .normal)
        button3.setTitle(currentQuestion.answers[2], for: .normal)
        button4.setTitle(currentQuestion.answers[3], for: .normal)
    }
    
    func nextQuestion() {
        currentQuestionIndex += 1
        
        if currentQuestionIndex < currentQuestions.count {
            updateUI()
        }
//        else {
//            performSegue(withIdentifier: "Results", sender: nil)
//        }
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

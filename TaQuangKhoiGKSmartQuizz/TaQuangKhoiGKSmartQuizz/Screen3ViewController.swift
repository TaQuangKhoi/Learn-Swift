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
        Question(text:"2+3",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"3+5",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"5+3",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"4+7",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"8+9",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"11+2",answers: ["A", "12", "13", "D"],
                 result: 2, image: "😀"),
        Question(text:"12+5",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"10+5",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"5+6",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"7+9",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"6+8",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"7+10",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"5+7",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"14+15",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
        Question(text:"17+5",answers: ["A", "B", "C", "D"],
                 result: 2, image: "😀"),
    ]
    
    
    
    var currentQuestions: [Question] = []
    
    var currentQuestionIndex = 0
    
    var currentQuestionAnswer = 4
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var answerLabel: UILabel!
    var speedMode: TestTypeDetail?
    
    var count: Int = 0
    var timer = Timer()
    
    var result: Result?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mode = speedMode?.name
        
        result = Result(testType: mode, answeredQuestion: 0, rightQuestions: 0, rating: 0)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(self.timerTick),
                                     userInfo: nil,
                                     repeats: true)
        
        nextButton.isEnabled = false
        
        get10Question()
        
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    @objc func timerTick() {
        count += 1
        timerLabel.text = "\(count)"
        
        if (count == speedMode?.timePerQuestion) {
//            timer.invalidate()
//            performSegue(withIdentifier: "purpleToYellowSegue", sender: nil)
            nextQuestionFunc()
        }
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
            answerLabel.text = "Your Answer is: " + currentQuestions[currentQuestionIndex].answers[currentQuestionAnswer]
          
//            answersChosen.append(currentAnswers[0])
        case button2:
            currentQuestionAnswer = 1
          
            answerLabel.text = "Your Answer is: " + currentQuestions[currentQuestionIndex].answers[currentQuestionAnswer]
//            answersChosen.append(currentAnswers[1])
        case button3:
            currentQuestionAnswer = 2
       
            answerLabel.text = "Your Answer is: " + currentQuestions[currentQuestionIndex].answers[currentQuestionAnswer]
//            answersChosen.append(currentAnswers[2])
        case button4:
            currentQuestionAnswer = 3
          
            answerLabel.text = "Your Answer is: " + currentQuestions[currentQuestionIndex].answers[currentQuestionAnswer]
//            answersChosen.append(currentAnswers[3])
        default:
            break
        }
        
        nextButton.isEnabled = true
    
//        nextQuestion()
    }

    @IBAction func nextQuestion(_ sender: Any) {
        if currentQuestionAnswer != 4 {
            result?.answeredQuestion += 1
        }
        nextQuestionFunc()
    }
    
    func checkAnswer() {
        if currentQuestionAnswer == currentQuestions[currentQuestionIndex].result {
            result?.rightQuestions += 1
        }
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
    
    func nextQuestionFunc() {
        
        currentQuestionIndex += 1
        currentQuestionAnswer = 4
        count = 0
        
        if currentQuestionIndex < currentQuestions.count {
            checkAnswer()
            updateUI()
        }
        else {
            performSegue(withIdentifier: "ResultSegue", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ResultSegue" {
            let screen4ViewController = segue.destination as! Screen4TableViewController
            
            screen4ViewController.result = self.result
            
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

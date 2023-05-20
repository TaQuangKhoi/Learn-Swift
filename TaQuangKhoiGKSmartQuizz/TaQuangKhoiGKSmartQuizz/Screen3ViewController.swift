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
    
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    
    var speedMode: TestTypeDetail?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        get10Question()

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

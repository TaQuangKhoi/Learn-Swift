//
//  Screen4TableViewController.swift
//  TaQuangKhoiGKSmartQuizz
//
//  Created by BVU on 5/20/23.
//

import UIKit

class Screen4TableViewController: UITableViewController {
    
    var result: Result?

    @IBOutlet weak var speedValue: UILabel!
    @IBOutlet weak var totalAnsweredQuestions: UILabel!
    @IBOutlet weak var totalRightAnswer: UILabel!
    @IBOutlet weak var ratingValue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func updateUI() {
//        speedValue.text = result?.testType.
        if let answeredQuestion = result?.answeredQuestion {
            totalAnsweredQuestions.text = String(answeredQuestion)
        }
        
        if let rightQuestions = result?.rightQuestions {
            totalRightAnswer.text = String(rightQuestions)
            ratingValue.text = String(calRating(rightAnswer: rightQuestions))
        }
    }
    
    func calRating(rightAnswer: Int) -> Int {
        var rating = 0
            if rightAnswer == 10 {
                rating = 5
            } else if rightAnswer >= 8 {
                rating = 4
            } else if rightAnswer >= 6 {
                rating = 3
            } else if rightAnswer >= 4 {
                rating = 2
            } else if rightAnswer == 3 {
                rating = 1
            } else if rightAnswer >= 1 {
                rating = 0
            }
        
        return rating
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

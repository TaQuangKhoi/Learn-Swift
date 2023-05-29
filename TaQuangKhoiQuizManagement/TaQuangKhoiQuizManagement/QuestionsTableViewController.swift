//
//  QuestionsTableViewController.swift
//  TaQuangKhoiQuizManagement
//
//  Created by BVU on 5/29/23.
//

import UIKit

class QuestionsTableViewController: UITableViewController {
    
    var questions = [
        TopicQuestion(name: "Ques 1", Answer: ["Ans 1", "Ans 2", "Ans 3", "Asn 4"], rightAnswer: 1),
        TopicQuestion(name: "Ques 2", Answer: ["Ans 1", "Ans 2", "Ans 3", "Asn 4"], rightAnswer: 1)
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        return questions.count
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell...
        //Step 1: Dequeue cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as! QuestionTableViewCell

        //Step 2: Fetch model object to display
        let question = questions[indexPath.row]

        //Step 3: Configure cell
        cell.update(with: question)
        cell.showsReorderControl = true

        //Step 4: Return cell
        return cell
    }
    

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
    
    @IBAction func unwindToQuestionTable(_ unwindSegue: UIStoryboardSegue) {
        guard unwindSegue.identifier == "unwindSaveTopicSegue",
                let sourceViewController = unwindSegue.source
                   as? AddEditQuestionViewController,
                let question = sourceViewController.question else { return }
        
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                questions[selectedIndexPath.row] = question
                tableView.reloadRows(at: [selectedIndexPath], with: .none)
            } else {
                let newIndexPath = IndexPath(row: questions.count, section: 0)
                questions.append(question)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
            }
    }

}

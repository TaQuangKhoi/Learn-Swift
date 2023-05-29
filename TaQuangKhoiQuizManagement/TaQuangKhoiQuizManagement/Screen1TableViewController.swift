//
//  Screen1TableViewController.swift
//  TaQuangKhoiQuizManagement
//
//  Created by BVU on 5/29/23.
//

import UIKit
import CoreData

class Screen1TableViewController: UITableViewController {
    
    var topics : Array<Topic> = [
        Topic(name: "Test 1"),
        Topic(name: "Test 2")
    ]
    
    var coreTopics: [NSManagedObject] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        
//        topics = getData()
        
        //1
          guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
              return
          }
          
          let managedContext =
            appDelegate.persistentContainer.viewContext
          
          //2
          let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "CoreTopic")
          
          //3
          do {
            coreTopics = try managedContext.fetch(fetchRequest)
          } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
          }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//         self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    @IBSegueAction func addEditTopic(_ coder: NSCoder, sender: Any?) -> UIViewController? {
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            // Editing Emoji
//            let topicToEdit = topics[indexPath.row]
            let coreTopicToEdit = coreTopics[indexPath.row]
            return AddEditTopicViewController(coder: coder,
                  topic: nil, coreTopic: coreTopicToEdit)
        } else {
            // Adding Emoji
            return AddEditTopicViewController(coder: coder,
                                              topic: nil, coreTopic: nil)
        }
    }
    
    func getData() -> Array<Topic> {
        let topic = [
            Topic(name: "Test 1"),
            Topic(name: "Test 2")
        ]
        return topic
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print("coreTopics.count: \(coreTopics.count)")
        return coreTopics.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell...
        //Step 1: Dequeue cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopicCell", for: indexPath) as! TopicTableViewCell

        //Step 2: Fetch model object to display
//        let topic = topics[indexPath.row]
        let topic = coreTopics[indexPath.row]

        //Step 3: Configure cell
        cell.update(with: topic)
        cell.showsReorderControl = true

        //Step 4: Return cell
        return cell
    }
    
    func save(name: String) {
      
      guard let appDelegate =
        UIApplication.shared.delegate as? AppDelegate else {
        return
      }
      
      // 1
      let managedContext =
        appDelegate.persistentContainer.viewContext
      
      // 2
      let entity =
        NSEntityDescription.entity(forEntityName: "CoreTopic",
                                   in: managedContext)!
      
      let topic = NSManagedObject(entity: entity,
                                   insertInto: managedContext)
      
      // 3
        topic.setValue(name, forKeyPath: "name")
      
      // 4
      do {
        try managedContext.save()
        coreTopics.append(topic)
      } catch let error as NSError {
        print("Could not save. \(error), \(error.userInfo)")
      }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            coreTopics.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let movedTopic = coreTopics.remove(at: fromIndexPath.row)
        
        coreTopics.insert(movedTopic, at: to.row)
    }
    

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
    
    @IBAction func unwindToTopicTable(_ unwindSegue: UIStoryboardSegue) {
        guard unwindSegue.identifier == "unwindSaveTopicSegue",
                let sourceViewController = unwindSegue.source
                   as? AddEditTopicViewController,
                let topic = sourceViewController.topic else { return }
        
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
//                topics[selectedIndexPath.row] = topic
                self.save(name: topic.name)
                tableView.reloadRows(at: [selectedIndexPath], with: .none)
            } else {
                let newIndexPath = IndexPath(row: coreTopics.count, section: 0)
//                topics.append(topic)
                self.save(name: topic.name)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
            }
    }

}

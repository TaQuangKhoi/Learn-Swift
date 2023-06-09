//
//  TopicTableViewCell.swift
//  TaQuangKhoiQuizManagement
//
//  Created by BVU on 5/29/23.
//

import UIKit
import CoreData

class TopicTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with topic: NSManagedObject) {
        nameLabel.text = topic.value(forKeyPath: "name") as? String
    }

}

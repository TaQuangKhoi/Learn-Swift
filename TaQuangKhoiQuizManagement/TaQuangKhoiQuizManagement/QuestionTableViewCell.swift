//
//  QuestionTableViewCell.swift
//  TaQuangKhoiQuizManagement
//
//  Created by BVU on 5/29/23.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    // Cannot add outlet, because this file does not appear on Assistant View :v
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with question: TopicQuestion) {
        nameLabel.text = question.name
    }

}

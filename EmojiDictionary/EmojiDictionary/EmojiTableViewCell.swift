//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by BVU on 5/13/23.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with emoji: Emoji) {
        symbolLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
    
//    override func tableView(_ tableView: UITableView, cellForRowAt
//       indexPath: IndexPath) -> UITableViewCell {
//        //Step 1: Dequeue cell
//        let cell = tableView.dequeueReusableCell(withIdentifier:
//           "EmojiCell", for: indexPath) as! EmojiTableViewCell
//
//        //Step 2: Fetch model object to display
//        let emoji = emojis[indexPath.row]
//
//        //Step 3: Configure cell
//        cell.update(with: emoji)
//        cell.showsReorderControl = true
//
//        //Step 4: Return cell
//        return cell
//    }

}

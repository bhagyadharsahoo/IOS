//
//  FlowerViewCell.swift
//  tableview3
//
//  Created by Sidhartha Das on 07/05/21.
//

import UIKit

class FlowerViewCell: UITableViewCell {

    @IBOutlet weak var secondLebel: UILabel!
    @IBOutlet weak var firstLebel: UILabel!
    @IBOutlet weak var flowerView1: UIImageView!
    @IBOutlet weak var magiaview: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

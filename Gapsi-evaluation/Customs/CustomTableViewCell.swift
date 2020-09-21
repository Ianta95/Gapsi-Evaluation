//
//  CustomTableViewCell.swift
//  Gapsi-evaluation
//
//  Created by Jesus Barragan  on 21/09/20.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblCost: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var imgItem: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func update_cell(title: String, cost: String, location: String, image: String) {
        self.imgItem.downloaded(from: image)
        self.lblTitle.text = title
        self.lblCost.text = cost
        self.lblLocation.text = location
    }

}

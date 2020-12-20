//
//  CollapsedTableViewCell.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/19/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import UIKit

class CollapsedTableViewCell: UITableViewCell {

    @IBOutlet weak var sectionNameTextView: UILabel!
    @IBOutlet weak var arrowImageView: UIImageView!
    @IBOutlet weak var collapsedTableView: UITableView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

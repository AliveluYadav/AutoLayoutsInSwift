//
//  TableViewCell.swift
//  AutoLayoutsInSwift
//
//  Created by Alivelu Ravula on 4/17/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var pagesLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

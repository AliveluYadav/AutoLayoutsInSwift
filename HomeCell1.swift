//
//  HomeCell1.swift
//  AutoLayoutsInSwift
//
//  Created by Alivelu Ravula on 4/17/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

import UIKit

class HomeCell1: UITableViewCell {

    @IBOutlet weak var batchIDLbl: UILabel!
    @IBOutlet weak var stdntIDLbl: UILabel!
    @IBOutlet weak var stntNameLbl: UILabel!
    @IBOutlet weak var homeImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

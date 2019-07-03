//
//  HomeCell2.swift
//  AutoLayoutsInSwift
//
//  Created by Alivelu Ravula on 4/17/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

import UIKit

class HomeCell2: UITableViewCell {

    @IBOutlet weak var atndnceDetailLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var atndnceCountLbl: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

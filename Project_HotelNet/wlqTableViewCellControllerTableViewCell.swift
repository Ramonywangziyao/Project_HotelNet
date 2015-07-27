//
//  wlqTableViewCellControllerTableViewCell.swift
//  Project_HotelNet
//
//  Created by Ziyao Wang on 7/21/15.
//  Copyright (c) 2015 Ziyao Wang. All rights reserved.
//

import UIKit

class wlqTableViewCellControllerTableViewCell: UITableViewCell {

    @IBOutlet weak var userDisplayName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var userIcon: UIImageView!
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  VolunteerTypeCell.swift
//  VolunPeer
//
//  Created by Mitchell Gant on 4/1/17.
//  Copyright © 2017 VolunPeer. All rights reserved.
//

import UIKit

class VolunteerTypeCell: UITableViewCell {

    @IBOutlet weak var volunteerTypeLabel: UILabel!
    @IBOutlet weak var isSelectedLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

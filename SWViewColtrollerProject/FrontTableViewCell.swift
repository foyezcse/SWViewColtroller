//
//  FrontTableViewCell.swift
//  SWViewColtrollerProject
//
//  Created by apple on 2/12/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class FrontTableViewCell: UITableViewCell {

    @IBOutlet weak var sideBarItemImageView: UIImageView!
    @IBOutlet weak var sideBarItemLabel: UILabel!
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

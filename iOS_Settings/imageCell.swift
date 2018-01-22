//
//  imageCellTableViewCell.swift
//  iOS_Settings
//
//  Created by Anand on 21/01/18.
//  Copyright © 2018 Rahul. All rights reserved.
//

import UIKit

class imageCell: UITableViewCell {

    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var infoLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  SwitchImageCellCell.swift
//  iOS_Settings
//
//  Created by Anand on 21/01/18.
//  Copyright © 2018 Rahul. All rights reserved.
//

import UIKit

class SwitchImageCell: UITableViewCell {

    @IBOutlet weak var iconImg: UIImageView!
    @IBOutlet weak var iconName: UILabel!
    @IBOutlet weak var switchBtn: UISwitch!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

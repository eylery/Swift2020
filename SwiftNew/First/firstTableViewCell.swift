//
//  firstTableViewCell.swift
//  SwiftNew
//
//  Created by apple on 2020/9/9.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

let identifyStr = "firstTableViewCell"


class firstTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

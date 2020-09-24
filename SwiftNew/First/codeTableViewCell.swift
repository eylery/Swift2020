//
//  codeTableViewCell.swift
//  SwiftNew
//
//  Created by apple on 2020/9/9.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
//import SnapKit

let codeIdentify = "codeTableViewCell"

class codeTableViewCell: UITableViewCell {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel.init(frame: self.bounds)
//        label.text = "www"
//        label.sizeToFit()
//        label.center.y = self.center.y
        
//        label.frame.origin.x = 16
        return label
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addUI() -> Void {
//        let label = UILabel.init(frame: contentView.bounds)
        
        self.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.top.bottom.right.equalTo(self)
            make.left.equalTo(16)//.offset(16)
        }
    }
}

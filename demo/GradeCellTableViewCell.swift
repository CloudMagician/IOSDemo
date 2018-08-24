//
//  GradeCellTableViewCell.swift
//  demo
//
//  Created by 陆子旭 on 2018/8/24.
//  Copyright © 2018年 Hello. All rights reserved.
//

import UIKit

class GradeCellTableViewCell: UITableViewCell {

    @IBOutlet weak var gradeimage: UIImageView!
    
    @IBOutlet weak var progressview: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.progressview.transform = CGAffineTransform(scaleX: 1.0, y: 5.0)

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  ResultTableViewCell.swift
//  NYU Directory
//
//  Created by ITS on 4/27/17.
//  Copyright © 2017 ITS. All rights reserved.
//

import UIKit

class ResultTableViewCell: UITableViewCell {
    @IBOutlet weak var employeeFullNameLabel: UILabel!

    @IBOutlet weak var employeeRoleTitleLabel: UILabel!
    
    @IBOutlet weak var employeeDepartmentLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

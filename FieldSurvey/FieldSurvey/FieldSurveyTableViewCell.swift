//
//  FieldSurveyTableViewCell.swift
//  FieldSurvey
//
//  Created by Dina Adel on 12/6/19.
//  Copyright © 2019 Dina Adel. All rights reserved.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var fieldIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

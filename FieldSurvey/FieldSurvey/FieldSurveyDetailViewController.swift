//
//  FieldSurveyDetailViewController.swift
//  FieldSurvey
//
//  Created by Dina Adel on 12/6/19.
//  Copyright © 2019 Dina Adel. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    
    @IBOutlet weak var fieldIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var fieldSurvey: FieldSurvey?
    
    var dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Observation"
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        if let fieldSurvey = fieldSurvey {
            titleLabel.text = fieldSurvey.title
            descriptionLabel.text = fieldSurvey.description
            dateLabel.text = dateFormatter.string(from: fieldSurvey.date)
            fieldIconImageView.image = UIImage(named: fieldSurvey.classification.rawValue)
        }
    }
}


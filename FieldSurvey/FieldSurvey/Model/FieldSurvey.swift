//
//  FieldSurvey.swift
//  FieldSurvey
//
//  Created by Dina Adel on 12/6/19.
//  Copyright © 2019 Dina Adel. All rights reserved.
//

import Foundation

enum Classification: String, Codable {
    case bird
    case amphibian
    case reptile
    case insect
    case fish
    case plant
    case mammal
}

struct FieldSurvey: Codable {
    let classification: Classification
    let title: String
    let description: String
    let date: Date
}

struct FieldSurveys: Codable {
    var status: String
    var observations: [FieldSurvey]
}

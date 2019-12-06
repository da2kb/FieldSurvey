//
//  FieldSurveyJSONLoader.swift
//  FieldSurvey
//
//  Created by Dina Adel on 12/6/19.
//  Copyright © 2019 Dina Adel. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {
    
    class func load(jsonFileName: String) -> FieldSurveys? {
        var fieldSurveys: FieldSurveys?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            fieldSurveys = try? jsonDecoder.decode(FieldSurveys.self, from: jsonData)
        }
        
        return fieldSurveys
    }
}


//
//  fieldObservationsJSONParser.swift
//  Field Survey
//
//  Created by Adam Oakes on 4/6/18.
//  Copyright © 2018 Adam Oakes. All rights reserved.
//

import Foundation

class fieldObservationJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [fieldObservation] {
        var fieldObservations = [fieldObservation]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            
            if let observations = root["observations"] as? [Any] {
                for observation in observations {
                    if let observation = observation as? [String: String] {
                        if let classification = observation["classification"],
                           let title = observation["title"],
                           let description = observation["description"],
                            let dateString = observation["date"],
                            let date = dateFormatter.date(from: dateString) {
                            
                            if let fieldObservation = fieldObservation(classification: classification, title: title, description: description, date: date) {
                                fieldObservations.append(fieldObservation)
                            }
                        }
                        
                    }
                }
            }
        }
        
        
        
        return fieldObservations
    }
}


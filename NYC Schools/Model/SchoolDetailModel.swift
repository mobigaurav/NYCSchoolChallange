//
//  SchoolDetailModel.swift
//  NYC Schools
//
//  Created by Gaurav Kumar on 12/13/21.
//

import Foundation
import CoreLocation

struct SchoolDetailModel:Hashable, Codable {
    let dbn: String
    let school_name: String
    let sat_critical_reading_avg_score: String
    let sat_math_avg_score: String
    let sat_writing_avg_score:String
}

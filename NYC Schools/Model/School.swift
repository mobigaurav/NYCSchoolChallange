//
//  School.swift
//  NYC Schools
//
//  Created by Gaurav Kumar on 12/9/21.
//

import Foundation
import CoreLocation

struct School:Hashable, Codable {
    let dbn: String
    let school_name: String
    let primary_address_line_1: String
    let city: String
    let overview_paragraph:String
}



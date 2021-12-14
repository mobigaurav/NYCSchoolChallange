//
//  SchoolData.swift
//  NYC Schools
//
//  Created by Gaurav Kumar on 12/11/21.
//

import Foundation
import Combine

final class SchoolData: ObservableObject {
    @Published var schools:[School] = [School]()
     func loadData(completion:@escaping ([School]) -> ()) {
         guard let url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json") else {
             print("Invalid url...")
             return
         }
         URLSession.shared.dataTask(with: url) { data, response, error in
             let schools = try! JSONDecoder().decode([School].self, from: data!)
             DispatchQueue.main.async {
                 completion(schools)
             }
         }.resume()

     }
}

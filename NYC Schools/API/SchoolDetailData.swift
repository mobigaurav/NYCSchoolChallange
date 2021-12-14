//
//  SchoolDetailData.swift
//  NYC Schools
//
//  Created by Gaurav Kumar on 12/13/21.
//

import Foundation
import Combine

final class SchoolDetailData: ObservableObject {
    @Published var schoolsDetail:[SchoolDetailModel] = [SchoolDetailModel]()
     func loadData(completion:@escaping ([SchoolDetailModel]) -> ()) {
         guard let url = URL(string: "https://data.cityofnewyork.us/resource/f9bf-2cp4.json") else {
             print("Invalid url...")
             return
         }
         URLSession.shared.dataTask(with: url) { data, response, error in
             let schools = try! JSONDecoder().decode([SchoolDetailModel].self, from: data!)
             DispatchQueue.main.async {
                 completion(schools)
             }
         }.resume()
         
     }
}

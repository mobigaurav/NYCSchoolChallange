//
//  SchoolScore.swift
//  NYC Schools
//
//  Created by Gaurav Kumar on 12/13/21.
//

import SwiftUI

struct SchoolScore: View {
    var schoolInformation:[SchoolDetailModel]
    var school:School
    
    var currentSchoolInformation : SchoolDetailModel? {
        schoolInformation.first { $0.dbn == school.dbn }
        }
    
    var body: some View {
        Text("SAT Score")
            .font(.title)
            .fontWeight(.bold)
        
        HStack {
            Text("Reading")
                .font(.title)
            Spacer()
            if let currentSchoolInformation = currentSchoolInformation {
                           Text("\(currentSchoolInformation.sat_critical_reading_avg_score)")
                               .font(.title)
                               .fontWeight(.bold)
                           
            }
            else {
                Text("NA")
                    .font(.title)
                    .fontWeight(.bold)
            }
            
        }.padding()
        
        HStack {
            Text("Writing")
                .font(.title)
            Spacer()
            if let currentSchoolInformation = currentSchoolInformation {
                           Text("\(currentSchoolInformation.sat_critical_reading_avg_score)")
                               .font(.title)
                               .fontWeight(.bold)
                           
            } else {
                Text("NA")
                    .font(.title)
                    .fontWeight(.bold)
            }
        }.padding()
        
        
        HStack {
            Text("Math")
                .font(.title)
            Spacer()
            if let currentSchoolInformation = currentSchoolInformation {
                           Text("\(currentSchoolInformation.sat_critical_reading_avg_score)")
                               .font(.title)
                               .fontWeight(.bold)
                           
            }else {
                Text("NA")
                    .font(.title)
                    .fontWeight(.bold)
            }
            
        }.padding()
    
    }
}

struct SchoolScore_Previews: PreviewProvider {
    static var previews: some View {
        SchoolScore(schoolInformation: SchoolDetailData().schoolsDetail,
                    school: SchoolData().schools[0])
    }
}

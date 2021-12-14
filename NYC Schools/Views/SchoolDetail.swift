//
//  SchoolDetail.swift
//  NYC Schools
//
//  Created by Gaurav Kumar on 12/11/21.
//

import SwiftUI

struct SchoolDetail: View {
    @State var schoolDetails = [SchoolDetailModel]()
    var school:School

    var body: some View {
        ScrollView {
                VStack(alignment: .leading) {
                    Text("\(school.school_name)")
                        .font(.title)

                    HStack {
                        Text("\(school.primary_address_line_1)")
                        Spacer()
                        Text("\(school.city)")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                    Divider()
                    
                    SchoolScore(schoolInformation:schoolDetails, school: school)
                    Divider()
                    
                    Text("About \(school.school_name)")
                        .font(.title2)
                    Text("\(school.overview_paragraph)")
                }
                .padding()
                 Spacer()
                .onAppear() {
                    SchoolDetailData().loadData { (schools) in
                            self.schoolDetails = schools
                        }
                    
                }
               
        }
        .navigationTitle(school.school_name)
        .navigationBarTitleDisplayMode(.inline)
      
    }
}

struct SchoolDetail_Previews: PreviewProvider {
    static var previews: some View {
        SchoolDetail(school: SchoolData().schools[0] )
            .environmentObject(SchoolDetailData())
    }
}


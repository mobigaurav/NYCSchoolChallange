//
//  SchoolsList.swift
//  NYC Schools
//
//  Created by Gaurav Kumar on 12/11/21.
//

import SwiftUI

struct SchoolsList: View {
    @State var schools = [School]()
    @ObservedObject var model = SchoolData()
    
    var body: some View {
        NavigationView {
        List(schools, id:\.self) { school in
            NavigationLink {
                    SchoolDetail(school: school)
                } label: {
                    SchoolRow(school: school)
            }
        }.listStyle(GroupedListStyle())
            
    .onAppear() {
            SchoolData().loadData { (schools) in
                self.schools = schools
            }
    }
    .navigationTitle("NYC Schools")
  }
 }
}

struct SchoolsList_Previews: PreviewProvider {
    static var previews: some View {
        SchoolsList()
            .environmentObject(SchoolData())
    }
}

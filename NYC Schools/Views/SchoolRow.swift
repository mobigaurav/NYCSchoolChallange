//
//  SchoolRow.swift
//  NYC Schools
//
//  Created by Gaurav Kumar on 12/11/21.
//

import SwiftUI
import Foundation

struct SchoolRow: View {
    var school:School
    var body: some View {
        VStack(alignment:.leading) {
            Text(school.school_name)
            Spacer()
        }
    }
}

struct SchoolRow_Previews: PreviewProvider {
    static var schools = SchoolData().schools
    static var previews: some View {
        SchoolRow(school: schools[0])
    }
}

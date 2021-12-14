//
//  NYC_SchoolsApp.swift
//  NYC Schools
//
//  Created by Gaurav Kumar on 12/9/21.
//

import SwiftUI

@main
struct NYC_SchoolsApp: App {
    @StateObject private var schoolData = SchoolData()
    @StateObject private var schoolDetailData = SchoolDetailData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(schoolData)
                .environmentObject(schoolDetailData)
        }
    }
}

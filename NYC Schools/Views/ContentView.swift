//
//  ContentView.swift
//  NYC Schools
//
//  Created by Gaurav Kumar on 12/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SchoolsList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SchoolData())
    }
}

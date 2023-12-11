//
//  LocationListView.swift
//  RickAndMortyApp
//
//  Created by Anisa Fatimah Azzahra on 14/11/23.
//

import SwiftUI

struct LocationListView: View {
    static let title = "Locations"
    var body: some View {
        NavigationView {
            List {
                Text("Hi")
            }
            .navigationTitle(LocationListView.title)
        }
    }
}

#Preview {
    LocationListView()
}

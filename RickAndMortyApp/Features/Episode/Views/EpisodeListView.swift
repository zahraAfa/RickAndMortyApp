//
//  EpisodeListView.swift
//  RickAndMortyApp
//
//  Created by Anisa Fatimah Azzahra on 14/11/23.
//

import SwiftUI

struct EpisodeListView: View {
    
    static let title = "Episodes"
    var body: some View {
        NavigationView {
            List {
                Text("Hi")
            }
            .navigationTitle(EpisodeListView.title)
        }
    }
}

#Preview {
    EpisodeListView()
}

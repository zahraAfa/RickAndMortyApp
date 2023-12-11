//
//  SettingsView.swift
//  RickAndMortyApp
//
//  Created by Anisa Fatimah Azzahra on 14/11/23.
//

import SwiftUI

struct SettingsView: View {
    static let title = "Settings"
    var body: some View {
        NavigationView {
            List {
                Text("Hi")
            }
            .navigationTitle(SettingsView.title)
        }
    }
}

#Preview {
    SettingsView()
}

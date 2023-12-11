//
//  HomeView.swift
//  RickAndMortyApp
//
//  Created by Anisa Fatimah Azzahra on 14/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        homeTabView
    }
    
    @ViewBuilder
    var homeTabView: some View{
        TabView {
            CharacterListView(viewModel: CharacterListViewViewModel()).tabItem{
                Label(CharacterListView.title, systemImage: "person")
            }
            LocationListView().tabItem{
                Label(LocationListView.title, systemImage: "globe")
            }
            EpisodeListView().tabItem{
                Label(EpisodeListView.title, systemImage: "tv")
            }
            SettingsView().tabItem{
                Label(SettingsView.title, systemImage: "gear")
            }
        }
    }
}

#Preview {
    HomeView()
}

//
//  CharacterListView.swift
//  RickAndMortyApp
//
//  Created by Anisa Fatimah Azzahra on 14/11/23.
//

import SwiftUI

struct CharacterListView: View {
    static let title = "Characters"
    @StateObject var viewModel = CharacterListViewViewModel()
    
    var body: some View {
        NavigationView {
            if viewModel.characters.isEmpty {
                ProgressView().progressViewStyle(CircularProgressViewStyle()).navigationTitle(CharacterListView.title)
            } else {
                List(viewModel.characters) { char in
                    NavigationLink(destination: CharacterDetailView(model: char), label: {
                        CharacterListCardView(model: char)
                    })
                }.navigationTitle(CharacterListView.title)
            }
        }.onAppear{
            viewModel.fetchCharacters()
        }
    }
}

#Preview {
    CharacterListView()
}

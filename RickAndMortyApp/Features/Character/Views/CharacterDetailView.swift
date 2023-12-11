//
//  CharacterDetailView.swift
//  RickAndMortyApp
//
//  Created by Anisa Fatimah Azzahra on 11/12/23.
//

import SwiftUI

struct CharacterDetailView: View {
var model: RMCharacter
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: model.image)){ image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }.aspectRatio(contentMode: .fill)
            
            Spacer().frame(height: 20)
            
            VStack(alignment: .leading){
                Text(model.name)
                    .font(.title)
                
                Spacer().frame(height: 20)
                
                HStack(content: {
                    CharacterDescChipView(text: model.status.rawValue)
                    
                    Spacer().frame(width: 6)
                    
                    CharacterDescChipView(text: model.species)
                    
                    Spacer().frame(width: 6)
                    
                    CharacterDescChipView(text: model.gender.rawValue)
                    
                })
                
                HStack(content: {
                    Text("Location: ")
                        .font(.body)
                        .foregroundStyle(.gray)
                    Text(model.location.name)
                        .font(.body).bold()
                        .foregroundStyle(.gray)
                })
                
                HStack(content: {
                    Text("Origin: ")
                        .font(.body)
                        .foregroundStyle(.gray)
                    Text(model.origin.name)
                        .font(.body).bold()
                        .foregroundStyle(.gray)
                })
                
                Spacer().frame(height: 30)
                    ForEach(model.episode, id: \.self) { ep in
                            HStack(content: {
                                Text(ep)
                            })
                            .padding(10)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(20)
                    }
                
            }.frame(minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .topLeading)
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    CharacterDetailView(model: RMCharacter(id: 1, name: "", status: .unknown, species: "", type: "", gender: .unknown, origin: RMCharacterOrigin(name: "", url: ""), location: RMCharacterLocation(name: "", url: ""), image: "", episode: [], url: "", created: ""))
}

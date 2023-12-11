//
//  CharacterListCardView.swift
//  RickAndMortyApp
//
//  Created by Anisa Fatimah Azzahra on 14/11/23.
//

import SwiftUI

struct CharacterListCardView: View {
    var model: RMCharacter
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: model.image)){ image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
                .aspectRatio(contentMode: .fill)
                .frame(width: 100 ,height: 100)
                .clipped()

            VStack(alignment: .leading){
                Text(model.name)
                    .font(.title3)
                
                Text(model.location.name)
                    .font(.body)
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    CharacterListCardView(model: RMCharacter(id: 1, name: "", status: .unknown, species: "", type: "", gender: .genderless, origin: RMCharacterOrigin(name: "", url: ""), location: RMCharacterLocation(name: "", url: ""), image: "", episode: [], url: "", created: ""))
}

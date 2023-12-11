//
//  CharacterListViewViewModel.swift
//  RickAndMortyApp
//
//  Created by Anisa Fatimah Azzahra on 14/11/23.
//

import Foundation

final class CharacterListViewViewModel: ObservableObject{
    @Published var characters: [RMCharacter] = []

    init(){
    }
    
    func fetchCharacters(){
        RMService.shared.execute(.listCharactersRequests, expacting: RMGetAllCharactersResponse.self) { result in
            switch result{
            case .success(let model):
                self.characters = model.results
                break
            case .failure(let error):
                print(String(describing: error))
                break
            }
        }
    }
}

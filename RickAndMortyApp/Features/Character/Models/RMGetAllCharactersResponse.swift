//
//  RMGetAllCharactersResponse.swift
//  RickAndMortyApp
//
//  Created by Anisa Fatimah Azzahra on 14/11/23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable{
    struct Info:Codable{
        let count: Int
        let pages: Int
        let next: String
    }
    
    let info: Info
    let results: [RMCharacter]
}

//
//  CharacterDescChip.swift
//  RickAndMortyApp
//
//  Created by Anisa Fatimah Azzahra on 11/12/23.
//

import SwiftUI

struct CharacterDescChipView: View {
    var text : String
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Text(text)
            .font(.body)
            .foregroundStyle(colorScheme == .dark ? .black: .white)
            .padding(.vertical, 4)
                .padding(.horizontal, 10)
                .background(colorScheme == .dark ? .gray : .gray.opacity(0.6))
                .cornerRadius(20)
    }
}

#Preview {
    CharacterDescChipView(text: "")
}

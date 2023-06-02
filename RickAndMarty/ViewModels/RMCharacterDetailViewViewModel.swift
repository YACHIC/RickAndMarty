//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMarty
//
//  Created by 莊雅棋 on 2023/6/2.
//

import Foundation

final class RMCharacterDetailViewViewModel{
    private let character: RMCharacter
    init(character: RMCharacter ) {
        self.character = character
        
    }
    
    public var title: String {
        character.name.uppercased()
    }
}

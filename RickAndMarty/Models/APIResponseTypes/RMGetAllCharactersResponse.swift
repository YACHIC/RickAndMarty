//
//  RMGetAllCharactersResponse.swift
//  RickAndMarty
//
//  Created by 莊雅棋 on 2023/5/31.
//

import Foundation

struct RMGetAllCharactersResponse: Codable{
    struct Info: Codable{
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMCharacter]
    
}


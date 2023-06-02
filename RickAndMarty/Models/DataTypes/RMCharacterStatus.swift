//
//  RMCharacterStatus.swift
//  RickAndMarty
//
//  Created by 莊雅棋 on 2023/5/29.
//

import Foundation

enum RMCharacterStatus: String, Codable{
    //The status of the character ('Alive', 'Dead' or 'unknown').
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
    
    var text: String{
        switch self{
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}


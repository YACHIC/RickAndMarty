//
//  File.swift
//  RickAndMarty
//
//  Created by 莊雅棋 on 2023/5/29.
//

import Foundation

enum RMCharacterGender: String, Codable{
    //The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}

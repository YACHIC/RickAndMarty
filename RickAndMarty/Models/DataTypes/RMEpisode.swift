//
//  RMEpisode.swift
//  RickAndMarty
//
//  Created by 莊雅棋 on 2023/5/29.
//

import Foundation

struct RMEpisode: Codable {
      let id: Int
      let name: String
      let air_date: String
      let episode: String
      let characters: [String]
      let url: String
      let created: String
}


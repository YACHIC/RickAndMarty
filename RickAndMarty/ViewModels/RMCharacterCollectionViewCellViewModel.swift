//
//  RMCharacterCollectionViewCellViewModel.swift
//  RickAndMarty
//
//  Created by 莊雅棋 on 2023/6/2.
//

import Foundation

final class RMCharacterCollectionViewCellViewModel{
    
    public let characterName: String
    private let characterStatus: RMCharacterStatus
    private let characterImageUrl: URL?
    
    // MARK: Init
    
    init(
        characterName: String,
        characterStatus: RMCharacterStatus,
        characterImageUrl: URL?
        
    ){
        self.characterName = characterName
        self.characterStatus = characterStatus
        self.characterImageUrl = characterImageUrl
    }
    
    public var characterStatusText: String{
        return characterStatus.rawValue
    }
    
    
    public func fetchImage(completion: @escaping ( Result< Data, Error >) -> Void){
        
        // TODO: Abstract to Image Manager
        guard let url = characterImageUrl else{
            completion(.failure(URLError(.badURL)))
            return
        }
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            
            guard let data = data, error == nil else{
                completion(.failure(error ?? URLError(.badServerResponse)))
                return
            }
            
            completion(.success(data))
        }
        
        task.resume()
    }
}

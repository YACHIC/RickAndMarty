//
//  RMService.swift
//  RickAndMarty
//
//  Created by 莊雅棋 on 2023/5/29.
//

import Foundation

/// API server object to get Rick and Morty data
final class RMService{
    
    static let shared = RMService()
    
    private init(){}
    
    /// Send API Call
    /// - Parameters:
    ///   - request: Request instace
    ///   - type: The type of object we expect to get back
    ///   - completion: callback data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T,Error>) -> Void
    ) {
        
    }
}

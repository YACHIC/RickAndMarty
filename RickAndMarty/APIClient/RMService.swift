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
    ///   - completion: callback data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}

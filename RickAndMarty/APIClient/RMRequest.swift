//
//  RMRequest.swift
//  RickAndMarty
//
//  Created by 莊雅棋 on 2023/5/29.
//

import Foundation

/// object that represents a single API call
final class RMRequest{
    //base url
    //endpoint
    //Path Component
    //Query Parameters
    //https://rickandmortyapi.com/api/character/2
    
    //API Constants
    private struct Constants{
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    //Desired endpoint
    private let endpoint: RMEndpoint
    //pathComponent(optional)
    private let pathComponent: [String]
    //queryParameters(optional)
    private let queryParameters: [URLQueryItem]
    
    /// construckted url for the qapi request in string format (API 請求網址)
    private var urlString: String{
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponent.isEmpty{
            pathComponent.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty{
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else{
                    return nil
                }
                return "\($0.name)=\(value)"
                
            }).joined(separator: "&")
            
            string += argumentString
            
        }
        
        return string;
    }
    
    // 組合後的ＵＲＬ
    public var url: URL? {
        return URL(string: urlString)
        
    }
    
    //請求方法
    public let httpMethod = "GET"
    
    // MarkPublic
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponent: Collection of Path components
    ///   - queryParameters: 請求 參數
    public init(endpoint: RMEndpoint, pathComponent: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponent = pathComponent
        self.queryParameters = queryParameters
    }
    
}


extension RMRequest {
    static let listCharactersRequests = RMRequest(endpoint: .character)
}

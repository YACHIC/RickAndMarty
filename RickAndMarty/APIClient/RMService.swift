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
    
    enum RMServiceError: Error{
        case failedToCreateRequest
        case failedToGetData
    }
    
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
        
        guard let urlRequest = self.request(from: request) else{
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data,error == nil else{
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            
            //Decode data
            do{
//                Test
//                let json = try JSONSerialization.jsonObject(with: data)
//                print(String(describing: json))
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))

                
            }catch{
                completion(.failure(error))
            }
            
        }
        
        task.resume()
        
    }
    
    // MARK: -Private
    
    private func request(from rmRequest: RMRequest ) -> URLRequest?{
        
        guard let url = rmRequest.url else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}

//
//  RMCharaterViewController.swift
//  RickAndMarty
//
//  Created by 莊雅棋 on 2023/5/29.
//

import UIKit

final class RMCharaterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "角色"
////URL test
//        let request = RMRequest(
//            endpoint: .character,
//            queryParameters: [
//                URLQueryItem(name: "name", value: "rick"),
//                URLQueryItem(name: "status", value: "alive")
//            ]
//        )
//
//        print(request.url)
//
//        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
//            switch result{
//                case .success:
//
//                break
//
//                case .failure(let error):
//                    print(String(describing: error))
//                break
//
//            }
//        }
        
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }

    }
    

    
}

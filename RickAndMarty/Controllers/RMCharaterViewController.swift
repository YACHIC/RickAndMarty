//
//  RMCharaterViewController.swift
//  RickAndMarty
//
//  Created by 莊雅棋 on 2023/5/29.
//

import UIKit

final class RMCharaterViewController: UIViewController {
    
    private let characterListView = RMCharacterListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "角色"
        view.addSubview(characterListView)
        setupView()


    }
    
    private func setupView() {
        NSLayoutConstraint.activate([
            characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            characterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            characterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
        ])
    }
    

    
}

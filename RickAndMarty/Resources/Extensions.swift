//
//  Extensions.swift
//  RickAndMarty
//
//  Created by 莊雅棋 on 2023/5/31.
//

import UIKit

extension UIView {
    func addSubViews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}

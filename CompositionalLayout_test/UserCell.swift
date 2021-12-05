//
//  UserCell.swift
//  CompositionalLayout_test
//
//  Created by Maxim Mitin on 6.12.21.
//

import Foundation
import UIKit

protocol SelfConfiguringCell {
    static var reuseId: String {get}
    func configure(with intValue: Int)
}

class UserCell: UICollectionView, SelfConfiguringCell {
    static var reuseId: String = "UserCell"
    
    let friendImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
                backgroundColor = UIColor(white: 1, alpha: 1)
                setupConstraints()
        
                self.layer.cornerRadius = 4
                self.clipsToBounds = true
    }
    
    func setupConstraints() {
        friendImageView.translatesAutoresizingMaskIntoConstraints = false
        friendImageView.backgroundColor = .blue
        addSubview(friendImageView)
        friendImageView.frame = self.bounds
        backgroundColor = .green
    }
    
    func configure(with intValue: Int) {
        print("123")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:)")
    }
}

//
//  CustomCollectionViewCell.swift
//  ImageCollection
//
//  Created by Kateryna on 03/01/2025.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    static let identifier = "CustomCollectionViewCell"
    
    private let myImage: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(systemName: "questionMark")
        iv.clipsToBounds = true
        return iv
    }()
    
    public func configure(with image: UIImage) {
        myImage.image = image
        self.setupUI()
    }
    
    private func setupUI() {
        addSubview(myImage)
        
        myImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myImage.topAnchor.constraint(equalTo: self.topAnchor),
            myImage.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            myImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            myImage.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        myImage.image = nil
    }
}

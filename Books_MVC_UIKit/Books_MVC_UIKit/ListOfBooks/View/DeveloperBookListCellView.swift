//
//  DeveloperBookListCellView.swift
//  Books_MVC_UIKit
//
//  Created by Lucas Quiroga on 17/09/23.
//

import Foundation
import UIKit
import Kingfisher

class DeveloperBookListCellView: UITableViewCell {
    let bookImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
       return imageView
    }()
    
    let bookPrice: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bookTitle: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    func setupViews(){
        
        addSubview(bookTitle)
        addSubview(bookPrice)
        addSubview(bookImageView)
        
        NSLayoutConstraint.activate([
            bookImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            bookImageView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            bookImageView.heightAnchor.constraint(equalToConstant: 90),
            bookImageView.widthAnchor.constraint(equalToConstant: 80),
            
            bookTitle.leadingAnchor.constraint(equalTo: bookImageView.trailingAnchor, constant: 20),
            bookTitle.topAnchor.constraint(equalTo: bookImageView.topAnchor),
            bookTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            bookPrice.leadingAnchor.constraint(equalTo: bookTitle.leadingAnchor),
            bookPrice.topAnchor.constraint(equalTo: bookTitle.bottomAnchor, constant: 8)
        ])
        
    }
    
    func configure(_ model: BookModel){
        self.bookTitle.text = model.title
        self.bookPrice.text = "Price: " + model.price
        self.bookImageView.kf.setImage(with: URL(string: model.image))
    }
    
    
}


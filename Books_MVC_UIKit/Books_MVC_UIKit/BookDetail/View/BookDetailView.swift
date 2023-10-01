//
//  BookDetailView.swift
//  Books_MVC_UIKit
//
//  Created by Lucas Quiroga on 23/09/23.
//

import Foundation
import UIKit

class BookDetailView: UIView {
    
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
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews(){
        
        addSubview(bookTitle)
        addSubview(bookPrice)
        addSubview(bookImageView)
        
        backgroundColor = .white
        
        NSLayoutConstraint.activate([
            bookImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            bookImageView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 30),
            bookImageView.heightAnchor.constraint(equalToConstant: 200),
            bookImageView.widthAnchor.constraint(equalToConstant: 200),
            
            bookTitle.topAnchor.constraint(equalTo: bookImageView.bottomAnchor),
            bookTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            bookTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            bookPrice.topAnchor.constraint(equalTo: bookTitle.bottomAnchor, constant: 8),
            bookPrice.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            bookPrice.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        ])
        
    }
    
    func configure(_ model: BookModel){
        self.bookTitle.text = "Title: " + model.title
        self.bookPrice.text = "Price: " + model.price
        self.bookImageView.kf.setImage(with: URL(string: model.image))
    }
    
}

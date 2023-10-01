//
//  MovieCellView.swift
//  Movies_VIPER_DemoUIKit
//
//  Created by Mac Home on 1/10/23.
//

import Foundation
import UIKit
import Kingfisher

class MovieCellView: UITableViewCell {
    
    let movieImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let movieName: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 28,
                                 weight: .bold,
                                 width: .condensed)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let movieDescription: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 10,
                                 weight: .regular,
                                 width: .standard)
        label.textColor = .systemGray2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpViews()
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews() {
        addSubview(movieImageView)
        addSubview(movieName)
        addSubview(movieDescription)
        
        NSLayoutConstraint.activate([
            
            movieImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            movieImageView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            movieImageView.heightAnchor.constraint(equalToConstant: 200),
            movieImageView.widthAnchor.constraint(equalToConstant: 100),
            movieImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            movieName.leadingAnchor.constraint(equalTo: movieImageView.trailingAnchor, constant: 18),
            movieName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            movieName.topAnchor.constraint(equalTo: movieImageView.topAnchor, constant: 24),
            
            movieDescription.leadingAnchor.constraint(equalTo: movieImageView.trailingAnchor, constant: 20),
            movieDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            movieDescription.topAnchor.constraint(equalTo: movieName.bottomAnchor, constant: 8)
    
        ])
    }
    
    func configure(model: PopularMovieEntity){
        movieImageView.kf.setImage(with: URL(string: "https://image.tmdb.org/t/p/w200" + model.imageURL))
        movieName.text = model.title
        movieDescription.text = model.overview
    }
    
}

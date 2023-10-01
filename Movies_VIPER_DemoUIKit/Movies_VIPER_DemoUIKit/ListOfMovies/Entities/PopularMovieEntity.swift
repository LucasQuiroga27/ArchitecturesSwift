//
//  PopularMovieEntity.swift
//  Movies_VIPER_DemoUIKit
//
//  Created by Mac Home on 30/09/23.
//

import Foundation

struct PopularMovieEntity: Decodable {
    var id: Int
    var title: String
    var overview: String
    var imageURL: String
    var lenguage: String
    var votes: Double
    
    enum CodingKeys: String, CodingKey {
        case id, title, overview
        case lenguage = "original_language"
        case imageURL = "poster_path"
        case votes = "vote_average"
    }
    
}

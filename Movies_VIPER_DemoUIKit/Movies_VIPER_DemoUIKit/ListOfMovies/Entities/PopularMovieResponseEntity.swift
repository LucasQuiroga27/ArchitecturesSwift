//
//  PopularMovieResponseEntity.swift
//  Movies_VIPER_DemoUIKit
//
//  Created by Mac Home on 30/09/23.
//

import Foundation

struct PopularMovieResponseEntity: Decodable {
    let results: [PopularMovieEntity]
}

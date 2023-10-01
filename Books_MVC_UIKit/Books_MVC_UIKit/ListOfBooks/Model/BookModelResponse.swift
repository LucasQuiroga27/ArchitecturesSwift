//
//  BookModelResponse.swift
//  Books_MVC_UIKit
//
//  Created by Lucas Quiroga on 17/09/23.
//

import Foundation

struct BookModelResponse: Decodable {
    let total: String
    let books: [BookModel]
}

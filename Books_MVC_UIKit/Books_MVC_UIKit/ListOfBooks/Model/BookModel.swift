//
//  BookModel.swift
//  Books_MVC_UIKit
//
//  Created by Lucas Quiroga on 20/09/23.
//

import Foundation

struct BookModel: Decodable {
    
    let title: String
    let subtitle: String
    let isbn13: String
    let price: String
    let image: String
    let url: String
    
}

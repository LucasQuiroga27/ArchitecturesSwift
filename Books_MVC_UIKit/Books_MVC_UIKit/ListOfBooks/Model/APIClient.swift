//
//  APIClient.swift
//  Books_MVC_UIKit
//
//  Created by Lucas Quiroga on 17/09/23.
//

import Foundation

final class ListOfDeveloperBooksAPIClient {
    
    func getListOfDeveloperBooks() async -> BookModelResponse {
        let url = URL(string: "https://api.itbook.store/1.0/new")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(BookModelResponse.self, from: data)
    }
    
}

//
//  APIClient.swift
//  MVC_Architecture_UIkit
//
//  Created by Lucas Quiroga on 13/07/23.
//

import Foundation

final class ListOfCharactersAPIClient {
    func getListOfCharacters() async -> CharacterModelResponse {
        
        let url = URL(string: "https://rickandmortyapi.com/api/character")! // variable para poder realizar la petición
        let (data, _) = try! await URLSession.shared.data(from: url) //obtenemos datos
        return try! JSONDecoder().decode(CharacterModelResponse.self, from: data)
        
    }
}

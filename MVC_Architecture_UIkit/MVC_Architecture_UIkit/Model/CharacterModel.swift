//
//  CharacterModel.swift
//  MVC_Architecture_UIkit
//
//  Created by Lucas Quiroga on 13/07/23.
//

import Foundation

struct CharacterModel: Decodable {
    
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let image: String
    
}

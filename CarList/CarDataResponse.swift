//
//  CarData.swift
//  CarList
//
//  Created by Antonio Vuono on 12/12/22.
//

import Foundation

struct Home: Codable {
    let status, copyright: String
    let numResults: Int
    let results: [CarList]
    
    enum CodingKeys: String, CodingKey {
        case status, copyright
        case numResults = "num_results"
        case results
    }
}

struct CarList: Codable {
    let id: Int
    let image: String
    let name, cor, ano, cambio: String
    
    enum Codingeys: String, CodingKey {
        case id
        case image
        case name, cor, ano, cambio
    }
}

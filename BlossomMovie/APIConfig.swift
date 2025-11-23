//
//  APIConfig.swift
//  BlossomMovie
//
//  Created by Farras Nazhif Pratikno on 23/11/25.
//

import Foundation

struct APIConfig: Decodable {
    let tmdBaseURL: String
    let tmdAPIKey: String
    
    static let shared: APIConfig = {
        guard let url = Bundle.main.url(forResource: "APIConfig", withExtension: "json") else {
            fatalError("Couldn't find APIConfig.json file.")
        }
        
        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(APIConfig.self, from: data)
        } catch {
            fatalError("Failed to decode APIConfig.json: \(error)")
        }
    }()
}

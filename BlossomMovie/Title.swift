//
//  Title.swift
//  BlossomMovie
//
//  Created by Farras Nazhif Pratikno on 23/11/25.
//

import Foundation

struct APIObject: Decodable {
    var results: [title] = []
}

struct title: Decodable, Identifiable {
    var id: Int?
    var title: String?
    var name: String?
    var overview: String?
    var posterPath: String?
}

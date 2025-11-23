//
//  Constants.swift
//  BlossomMovie
//
//  Created by Farras Nazhif Pratikno on 23/11/25.
//

import Foundation
import SwiftUI

struct Constants {
    static let homeString = "Home"
    static let upcomingString = "Upcoming"
    static let searchString = "Search"
    static let downloadString = "Download"
    static let playString = "Play"
    
    static let homeIcon = "house"
    static let upcomingIcon = "play.circle"
    static let searchIcon = "magnifyingglass"
    static let downloadIcon = "arrow.down.to.line"
    
    static let testTitleURL = "https://image.tmdb.org/t/p/w500/nnl6OWkyPpuMm595hmAxNW3rZFn.jpg"
    static let testTitleURL2 = "https://image.tmdb.org/t/p/w500/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg"
    static let testTitleURL3 = "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg"
}

extension Text {
    func ghostButton() -> some View {
        // what extension the function refers to, for this scenario, it refers to Text extension
        self
            .frame(width: 100, height: 50)
            .foregroundStyle(.buttonText)
            .bold(true)
            .background {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(.buttonBorder, lineWidth: 5)
            }
    }
}



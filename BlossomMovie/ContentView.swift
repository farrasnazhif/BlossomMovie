 //
//  ContentView.swift
//  BlossomMovie
//
//  Created by Farras Nazhif Pratikno on 23/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // navigation
        TabView{
            // paramater 1: key of the tab, what's the tab for (and also its the tab text)
            // parameter 2: icon
            Tab("Home", systemImage: "house"){
                // page content
                Text("Home")
            }
            
            Tab("Upcoming", systemImage: "play.circle"){
                Text("Upcoming")
            }
            
            Tab("Search", systemImage: "magnifyingglass"){
                Text("Search")
            }
            
            Tab("Download", systemImage: "arrow.down.to.line"){
                Text("Download")
            }
        }
  
    }
}

#Preview {
    ContentView()
}

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
            Tab(Constants.homeString, systemImage: Constants.homeIcon){
                // page content
               HomeView()
            }
            
            Tab(Constants.upcomingString, systemImage: Constants.upcomingIcon){
                Text(Constants.upcomingString)
            }
            
            Tab(Constants.searchString, systemImage: Constants.searchIcon){
                Text(Constants.searchString)
            }
            
            Tab(Constants.downloadString, systemImage: Constants.downloadIcon){
                Text(Constants.downloadString)
            }
        }
  
    }
}

#Preview {
    ContentView()
}

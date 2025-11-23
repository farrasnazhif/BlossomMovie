//
//  HomeView.swift
//  BlossomMovie
//
//  Created by Farras Nazhif Pratikno on 23/11/25.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle = Constants.testTitleURL
    
    var body: some View {
        // col
        VStack {
            AsyncImage(url: URL(string: heroTestTitle)){image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            
            // row
            HStack {
                Button {
                    
                } label: {
                    Text(Constants.playString)
                        .ghostButton()
                }
                
                Button {
                    
                } label: {
                    Text(Constants.downloadString)
                        .ghostButton()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

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
     
        GeometryReader {geo in
            ScrollView {
                // col
                // Lazy can be scrolled,the views will load when they're needed
                LazyVStack {
                    AsyncImage(url: URL(string: heroTestTitle)){image in
                        image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: geo.size.height, height: geo.size.height * 0.85)
                    
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
                    
                    HorizontalListView(header: Constants.trendingMovieString)
                    HorizontalListView(header: Constants.trendingTVString)
                    HorizontalListView(header: Constants.topRatedMovieString)
                    HorizontalListView(header: Constants.topRatedTVString)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

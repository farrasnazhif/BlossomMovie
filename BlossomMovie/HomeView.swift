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
                        .frame(width: 100, height: 50)
                        .foregroundStyle(.buttonText)
                        .bold(true)
                        .background {
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .stroke(.buttonBorder, lineWidth: 5)
                        }
                }
                
                Button {
                    
                } label: {
                    Text(Constants.downloadString)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

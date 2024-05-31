//
//  ScrollingImageView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 31.05.2024.
//
// Stewart Lynch

import SwiftUI

struct ScrollingImageView: View {
    
    var imageNames: [String] {
        Array(1...7).map {"Palm-\($0)"}
    }
    
    var body: some View {
        GeometryReader { screen in
            ScrollView(.horizontal) {
                HStack(spacing: 0) {
                    ForEach(imageNames, id: \.self) { imageName in
                        GeometryReader { geometry in
                            Image(imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: screen.size.width)
                                .offset(x: -geometry.frame(in: .global).origin.x)
                                .clipped()
                            Text(geometry.xOrigin(space: .global))
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding(100)
                        }
                        .frame(width: screen.size.width)
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ScrollingImageView()
}

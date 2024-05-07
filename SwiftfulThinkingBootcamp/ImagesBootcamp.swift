//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 7.05.2024.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("google")
            .resizable()
            .scaledToFit()
            .frame(width: 75, height: 90)
        
        Image("google")
            .resizable()
            .scaledToFill()
            .frame(width: 75, height: 90)
            .clipped()
        
        // .png
        Image("house")
            // renders as template
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 75, height: 90)
            .foregroundColor(.red)
            
        
        Image("woman")
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 100)
            .clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 25.0)
                Ellipse()
            )
    }
}

#Preview {
    ImagesBootcamp()
}

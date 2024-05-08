//
//  PaddingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 8.05.2024.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        //        Text("Hello, World!")
        //            //.padding()
        //            //.padding(.all, 10)
        //            //.padding(.vertical, 10)
        //            .padding(.horizontal, 10)
        //            .background(.blue)
        //        Text("Hello World")
        //            .font(.largeTitle)
        //            .fontWeight(.semibold)
        //            .frame(maxWidth: .infinity, alignment: .leading)
        //            .background(.red)
        //            .padding(.leading, 20)
        
        
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 12)
            Text("  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tincidunt at sem quis commodo. Integer efficitur ex vel porta auctor.")
        }
        .padding()
        .padding(.vertical, 10.0)
        .background(
            Color.white
                .cornerRadius(10.0)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 1,
                    x: 0.0, y: 10.0
                )
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingBootcamp()
}

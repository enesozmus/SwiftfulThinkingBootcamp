//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 7.05.2024.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.largeTitle)
            .foregroundColor(.red)
            .frame(width: 10, height: 10)
        Image(systemName: "heart.fill")
            .resizable()
        //  .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 240, height: 240)
        Image(systemName: "heart.fill")
            .resizable()
            .scaledToFill()
            .font(.system(size: 25.0))
            .frame(width: 100, height: 100)
            .clipped()
        Image(systemName: "trash")
        Image(systemName: "doc")
        Image(systemName: "paperplane.fill")
        Image(systemName: "xmark")
        Image(systemName: "person.badge.plus")
            .renderingMode(.original)
    }
}

#Preview {
    IconsBootcamp()
}

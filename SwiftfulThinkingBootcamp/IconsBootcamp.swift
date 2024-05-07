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
        Image(systemName: "theatermasks")
            .symbolRenderingMode(.hierarchical)
            .foregroundStyle(.blue)
        Image(systemName: "person.badge.plus")
            .symbolRenderingMode(.palette)
            .foregroundStyle(.green, .blue)
        Image(systemName: "shareplay")
            .symbolRenderingMode(.palette)
            .foregroundStyle(.blue, .black)
        Image(systemName: "person.3.sequence.fill")
            .symbolRenderingMode(.palette)
            .foregroundStyle(.blue, .red, .green)
        Image(systemName: "person.3.sequence.fill")
            .symbolRenderingMode(.palette)
            .foregroundStyle(
                .linearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottomTrailing),
                .linearGradient(colors: [.green, .black], startPoint: .top, endPoint: .bottomTrailing),
                .linearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottomTrailing)
            )
            .font(.system(size: 144))
        // cmd + shift + l
        Image(systemName: "figure.jumprope")
        
        Image(systemName: "battery.100.bolt")
            .resizable()
            .symbolRenderingMode(.palette)
            .foregroundStyle(.brown, .gray, .green)
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
    }
}

#Preview {
    IconsBootcamp()
}

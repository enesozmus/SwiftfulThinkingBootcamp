//
//  ColorPickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 12.05.2024.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State private var bgColor : Color = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    @State private var backgroundColor: Color = .yellow.opacity(0.5)
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}

/*
    🔴 ColorPicker
        → A control used to select a color from the system color picker UI.
        → The color picker provides a color well that shows the currently selected color, and displays the larger system color picker that allows users to select a new color.

             @State private var bgColor = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)

             var body: some View {
                 VStack {
                     ColorPicker("Alignment Guides", selection: $bgColor)
                 }
             }
 */

//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 7.05.2024.
//

import SwiftUI

struct GradientsBootcamp: View {
    
    let hueColors = stride(from: 0, to: 1, by: 0.01).map {
        Color(hue: $0, saturation: 1, brightness: 1)
    }
    
    var body: some View {
        Text("Rainbow")
            .font(.largeTitle)
            .foregroundStyle(
                LinearGradient(
                    gradient: Gradient(colors: hueColors),
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                .green.gradient
            )
            .frame(width: 300, height: 170)
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //                .red
                LinearGradient(
                    gradient: Gradient(colors: [Color.green, Color.black, Color.green]),
                    startPoint: .top,
                    endPoint: .bottomTrailing
                )
            )
            .frame(width: 300, height: 170)
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                RadialGradient(
                    //                    colors: [.red, .blue],
                    gradient: Gradient(colors: [Color.green, Color.black, Color.green]),
                    //                    center: .center,
                    center: .topLeading,
                    startRadius: 5.0,
                    endRadius: 200.0
                )
            )
            .frame(width: 300, height: 170)
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                AngularGradient(
                    colors: [.red, .blue],
                    //gradient: Gradient(colors: [Color.green, Color.black, Color.green]),
                    //                    center: .center,
                    center: .center,
                    angle: .degrees(4 + 45)
                )
            )
            .frame(width: 300, height: 170)
    }
}

#Preview {
    GradientsBootcamp()
}

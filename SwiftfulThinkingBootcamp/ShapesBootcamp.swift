//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 7.05.2024.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //        Circle()
        //        Ellipse()
//        Capsule(style: .circular)
        RoundedRectangle(cornerRadius: 25.0)
        //            .fill(.green)
        //            .foregroundColor(.blue)
        //            .stroke()
        //            .stroke(.pink)
        //            .stroke(.pink, lineWidth: 6.0)
        //            .stroke(
        //                .pink,
        //                style: StrokeStyle(
        //                    lineWidth: 20,
        //                    lineCap: .round,
        //                    dash: [15]
        //                )
        //            )
        //            .trim(from: 0.28, to: 1.0)
        //            .stroke(.purple, lineWidth: 50.0)
            .frame(width: 100, height: 100)
        
    }
}

#Preview {
    ShapesBootcamp()
}

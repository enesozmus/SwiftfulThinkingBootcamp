//
//  TimingCurvesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 10.05.2024.
//

import SwiftUI

struct TimingCurvesBootcamp: View {
    
    @State var isAnimated: Bool = false
    let timing: Double = 3.5
    
    var body: some View {
        VStack {
            Button("Button") {
                //withAnimation(.default) {
                //withAnimation(.default.delay(3)) {
                //withAnimation(.default.repeatForever(autoreverses: true)) {
                isAnimated.toggle()
                //}
            }
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .frame(
                    width: isAnimated ? 50 : 150,
                    height: isAnimated ? 50 : 150)
                .animation(.default, value: isAnimated)
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .frame(
                    width: isAnimated ? 50 : 150,
                    height: isAnimated ? 50 : 150)
                // same speed from start to end
                //.animation(.linear, value: isAnimated)
                .animation(.linear(duration: timing), value: isAnimated)
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .frame(
                    width: isAnimated ? 50 : 150,
                    height: isAnimated ? 50 : 150)
                // slow at first and then fast at the end
                //.animation(.easeIn, value: isAnimated)
                .animation(.easeIn(duration: timing), value: isAnimated)
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .frame(
                    width: isAnimated ? 50 : 150,
                    height: isAnimated ? 50 : 150)
                // fast at first and then slow at the end
                //.animation(.easeOut, value: isAnimated)
                .animation(.easeOut(duration: timing), value: isAnimated)
        }
    }
}

#Preview {
    TimingCurvesBootcamp()
}

/*
    🟢 In SwiftUI, animations are enriched by "the flexibility of timing curves" and "springs".
    🟢 Timing curves, such as Linear, easeIn, easeOut, and easeInOut, offer predefined patterns for animation progression.
    🟢 These curves enable developers to control the speed and acceleration of animations.
 
    🟣 Custom timing curve animation enables you to define your own Bézier curve for precise control over the acceleration and deceleration of the animation.
 
        .animation(Animation.timingCurve(0.2, 0.8, 0.0, 1.0, duration: 1.0) )
 
            .animation(.default, value: isAnimated)
            .animation(.linear, value: isAnimated)
            .animation(.easeIn, value: isAnimated)
            .animation(.easeOut, value: isAnimated)
            .animation(.easeInOut, value: isAnimated)
 */

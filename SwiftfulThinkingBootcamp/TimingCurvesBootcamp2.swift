//
//  TimingCurvesBootcamp2.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 10.05.2024.
//

import SwiftUI

struct TimingCurvesBootcamp2: View {
    
    @State var isAnimated: Bool = false
    let timing: Double = 3.5
    
    var body: some View {
        VStack(spacing: 8) {
            Button("Button") {
                isAnimated.toggle()
            }
            //            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
            //                .frame(
            //                    width: isAnimated ? 25 : 100,
            //                    height: isAnimated ? 25 : 100)
            //                .animation(.default, value: isAnimated)
            //
            //            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
            //                .frame(
            //                    width: isAnimated ? 25 : 100,
            //                    height: isAnimated ? 25 : 100)
            //                .animation(.linear(duration: timing), value: isAnimated)
            
            //            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
            //                .frame(
            //                    width: isAnimated ? 25 : 100,
            //                    height: isAnimated ? 25 : 100)
            //                .animation(.easeIn(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .frame(
                    width: isAnimated ? 25 : 100,
                    height: isAnimated ? 25 : 100)
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .frame(
                    width: isAnimated ? 25 : 100,
                    height: isAnimated ? 25 : 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .frame(
                    width: isAnimated ? 25 : 100,
                    height: isAnimated ? 25 : 100)
                .animation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0), value: isAnimated)
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .frame(
                    width: isAnimated ? 25 : 100,
                    height: isAnimated ? 25 : 100)
                .animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10.0, initialVelocity: 0.0), value: isAnimated)
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .frame(
                    width: isAnimated ? 25 : 100,
                    height: isAnimated ? 25 : 100)
                .animation(.timingCurve(0.2, 0.8, 0.0, 1.0, duration: 1.0), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(
                    width: isAnimated ? 350 : 50,
                    height: 100)
                .animation(
                    .spring(
                        response: 0.5,
                        dampingFraction: 0.5,
                        blendDuration: 1.0
                    )
                    , value: isAnimated)
        }
    }
}

#Preview {
    TimingCurvesBootcamp2()
}

/*
 
    🟢 Linear animation maintains a constant speed throughout its duration. It produces a consistent and steady transition from the start to the end of the animation.

    🟢 Ease-in animation starts slowly and accelerates as it progresses. The initial part of the animation is gentle, making it appear as if the view is gradually easing into the new state.

    🟢 Ease-out animation begins quickly and decelerates towards the end. The initial part of the animation is swift, giving the impression that the view is slowing down as it reaches its final state.

    🟢 Ease-in-out animation combines characteristics of ease-in and ease-out. It starts slowly, accelerates through the middle, and then decelerates towards the end, resulting in a smooth and natural-looking transition.

    🟢 Spring animation simulates the motion of a spring, creating a bounce or elastic effect. It is particularly useful for giving a more playful and dynamic feel to your animations. The response, dampingFraction, and blendDuration parameters allow you to fine-tune the characteristics of the spring animation.

            .spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)


    🟢 Similar to spring animation, interpolating spring animation allows you to customize the mass, stiffness, damping, and initial velocity of the spring, providing more control over the animation behaviour.

            .interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10.0, initialVelocity: 0.0)

    🟢 Custom timing curve animation enables you to define your own Bézier curve for precise control over the acceleration and deceleration of the animation.

            .timingCurve(0.2, 0.8, 0.0, 1.0, duration: 1.0)
 */

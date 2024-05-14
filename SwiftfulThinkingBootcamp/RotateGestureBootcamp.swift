//
//  RotateGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 14.05.2024.
//

import SwiftUI

struct RotateGestureBootcamp: View {
    
    // ... ⬛️
    // MARK: PROPERTIES
    @State private var angle: Angle = Angle(degrees: 0.0)
    
    var rotation: some Gesture {
        RotateGesture()
            .onChanged { value in
                angle = value.rotation
            }
    }
    
    @State private var currentAmount: Angle = Angle.zero
    @State private var finalAmount: Angle = Angle.zero
    
    // ... ⬛️
    // MARK: BODY
    var body: some View {
        // ... 🟦
        //        Rectangle()
        //            .frame(width: 200, height: 200, alignment: .center)
        //            .rotationEffect(angle)
        //            .gesture(rotation)
        // ... 🟦
        Text("Hello, World!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding(48)
            .background(.blue, in: RoundedRectangle(cornerRadius: 12.0))
            .rotationEffect(currentAmount + finalAmount)
            .gesture(
                RotateGesture()
                    .onChanged { value in
                        currentAmount = value.rotation
                    }
                    .onEnded { value in
                        finalAmount += currentAmount
                        currentAmount = .zero
                    }
            )
    }
}

#Preview {
    RotateGestureBootcamp()
}

/*
    🔴 RotateGesture
        → A gesture that recognizes a rotation motion and tracks the angle of the rotation.
        → A rotate gesture tracks how a rotation event sequence changes.
        → To recognize a rotate gesture on a view, create and configure the gesture, and then add it to the view using the gesture(_:including:) modifier.

         struct RotateGestureView: View {
             @State private var angle = Angle(degrees: 0.0)

             var rotation: some Gesture {
                 RotateGesture()
                     .onChanged { value in
                         angle = value.rotation
                     }
             }


             var body: some View {
                 Rectangle()
                     .frame(width: 200, height: 200, alignment: .center)
                     .rotationEffect(angle)
                     .gesture(rotation)
             }
         }
 */

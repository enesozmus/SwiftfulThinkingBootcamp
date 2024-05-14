//
//  DragGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 14.05.2024.
//

import SwiftUI

struct DragGestureBootcamp: View {
    
    // ... ⬛️
    // MARK: PROPERTIES
    @State private var isDragging: Bool = false
    
    var drag: some Gesture {
        DragGesture()
            .onChanged { _ in self.isDragging = true }
            .onEnded { _ in self.isDragging = false }
    }
    
    @State private var offset: CGSize = .zero
    
    // ... ⬛️
    // MARK: BODY
    var body: some View {
        // ... 🟦
        Circle()
            .fill(self.isDragging ? Color.red : Color.blue)
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(drag)
        // ... 🟦
        RoundedRectangle(cornerRadius: 12.0)
            .frame(width: 100, height: 100)
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        withAnimation(.spring) {
                            offset = value.translation
                        }
                    }
                    .onEnded { value in
                        withAnimation(.spring) {
                            offset = .zero
                        }
                    }
            )
        // ... 🟦
        ZStack {
            VStack {
                Text("\(offset.width)")
                Spacer()
            }
            RoundedRectangle(cornerRadius: 12.0)
                .frame(width: 300, height: 500)
                .offset(offset)
                .scaleEffect(getScaleAmount())
                .rotationEffect(Angle(degrees: getRotationAmount()))
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.spring) {
                                offset = value.translation
                            }
                        }
                        .onEnded { value in
                            withAnimation(.spring) {
                                offset = .zero
                            }
                        }
            )
        }
    }
    
    // ... ⬛️
    // MARK: FUNCTIONS
    func getScaleAmount() -> CGFloat {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = abs(offset.width)
        let percentage = currentAmount / max
        return 1.0 - min(percentage, 0.5) * 0.5
    }
    func getRotationAmount() -> Double {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = offset.width
        let percentage = currentAmount / max
        let percentageAsDouble = Double(percentage)
        let maxAngle: Double = 10.0
        return percentageAsDouble * maxAngle
    }
}

#Preview {
    DragGestureBootcamp()
}

/*
    🔴 DragGesture
        → A dragging motion that invokes an action as the drag-event sequence changes.
        → To recognize a drag gesture on a view, create and configure the gesture, and then add it to the view using the gesture(_:including:) modifier.

         struct DragGestureView: View {
             @State private var isDragging = false


             var drag: some Gesture {
                 DragGesture()
                     .onChanged { _ in self.isDragging = true }
                     .onEnded { _ in self.isDragging = false }
             }


             var body: some View {
                 Circle()
                     .fill(self.isDragging ? Color.red : Color.blue)
                     .frame(width: 100, height: 100, alignment: .center)
                     .gesture(drag)
             }
         }
 */

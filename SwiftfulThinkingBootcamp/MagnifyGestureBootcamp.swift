//
//  MagnifyGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 14.05.2024.
//

import SwiftUI

struct MagnifyGestureBootcamp: View {
    
    // ... ⬛️
    // MARK: PROPERTIES
    @GestureState private var magnifyBy: CGFloat = 1.0
    
    var magnification: some Gesture {
        MagnifyGesture()
            .updating($magnifyBy) { value, gestureState, transaction in
                gestureState = value.magnification
            }
    }
    
    @State private var currentAmount: CGFloat = 0
    @State private var lastAmount: CGFloat = 0
    
    // ... ⬛️
    // MARK: BODY
    var body: some View {
        // ... 🟦
        //        Circle()
        //            .frame(width: 100, height: 100)
        //            .scaleEffect(magnifyBy)
        //            .gesture(magnification)
        //        Spacer()
        
        // ... 🟦
        //        Text("Hello, World!")
        //            .font(.title)
        //            .padding(40)
        //            .background(Color.red.cornerRadius(10))
        //            .scaleEffect(1 + currentAmount + lastAmount)
        //            .gesture(
        //                MagnifyGesture()
        //                    .onChanged { value in
        //                        currentAmount = value.magnification - 1
        //                    }
        //                    .onEnded { value in
        //                        lastAmount += currentAmount
        //                        currentAmount = 0
        //                    }
        //            )
        
        // ... 🟦
        VStack(spacing: 10) {
            HStack {
                Circle()
                    .frame(width: 35, height: 35)
                Text("Swiftful Thinking")
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            
            Image("kitten")
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
                .scaleEffect(1 + currentAmount)
                .gesture(
                    MagnifyGesture()
                        .onChanged { value in
                            currentAmount = value.magnification - 1
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                currentAmount = 0
                            }
                        }
                )
            
            HStack {
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                Spacer()
            }
            .padding(.horizontal)
            .font(.headline)
            Text("This is the caption for my photo!")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
        }
    }
}

#Preview {
    MagnifyGestureBootcamp()
}

/*
    🔴 MagnifyGesture
        → A gesture that recognizes a magnification motion and tracks the amount of magnification.
        → To recognize a magnify gesture on a view, create and configure the gesture, and then add it to the view using the gesture(_:including:) modifier.

         struct MagnifyGestureView: View {
             @GestureState private var magnifyBy = 1.0


             var magnification: some Gesture {
                 MagnifyGesture()
                     .updating($magnifyBy) { value, gestureState, transaction in
                         gestureState = value.magnification
                     }
             }


             var body: some View {
                 Circle()
                     .frame(width: 100, height: 100)
                     .scaleEffect(magnifyBy)
                     .gesture(magnification)
             }
         }
 */

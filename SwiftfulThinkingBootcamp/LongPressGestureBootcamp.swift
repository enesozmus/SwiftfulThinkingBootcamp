//
//  LongPressGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 14.05.2024.
//

import SwiftUI

struct LongPressGestureBootcamp: View {
    // ... ⬛️
    // MARK: PROPERTIES
    @GestureState private var isDetectingLongPress: Bool = false
    @State private var completedLongPress: Bool = false
    
    @State private var isComplete1: Bool = false
    @State private var isComplete2: Bool = false
    @State private var isSuccess: Bool = false
    
    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 3)
            .updating($isDetectingLongPress) { currentState, gestureState,
                transaction in
                gestureState = currentState
                transaction.animation = Animation.easeIn(duration: 2.0)
            }
            .onEnded { finished in
                self.completedLongPress = finished
            }
    }
    
    // ... ⬛️
    // MARK: BODY
    var body: some View {
        // ... 🟦
        Circle()
            .fill(self.isDetectingLongPress ?
                  Color.red :
                    (self.completedLongPress ? Color.green : Color.blue))
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(longPress)
        
        // ... 🟦
        Text(isComplete1 ? "COMPLETED" : "NOT COMPLETE")
            .padding()
            .padding(.horizontal)
            .background(isComplete1 ? Color.green : Color.red)
            .cornerRadius(10)
        //            .onTapGesture {
        //                isComplete.toggle()
        //            }
            .onLongPressGesture(minimumDuration: 1.5, maximumDistance: 50) {
                isComplete1.toggle()
            }
        
        // ... 🟦
        VStack {
            Rectangle()
                .fill(isSuccess ? Color.green : Color.blue)
                .frame(maxWidth: isComplete2 ? .infinity : 0)
                .frame(height: 55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
            HStack {
                Text("CLICK HERE")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .onLongPressGesture(minimumDuration: 1.5, maximumDistance: 50) { (isPressing) in
                        // start of press -> min duration
                        if isPressing {
                            withAnimation(.easeInOut(duration: 1.5)) {
                                isComplete2 = true
                            }
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                if !isSuccess {
                                    withAnimation(.easeInOut) {
                                        isComplete2 = false
                                    }
                                }
                            }
                        }
                    } perform: {
                        // at the min duration
                        withAnimation(.easeInOut) {
                            isSuccess = true
                        }
                    }
                Text("RESET")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .onTapGesture {
                        isComplete2 = false
                        isSuccess = false
                    }
            }
        }
    }
}

#Preview {
    LongPressGestureBootcamp()
}

/*
    🔴 LongPressGesture
        → A gesture that succeeds when the user performs a long press.
        → To recognize a long-press gesture on a view, create and configure the gesture, then add it to the view using the gesture(_:including:) modifier.

    init(minimumDuration:maximumDistance:)
        → Creates a long-press gesture with a minimum duration and a maximum distance that the interaction can move before the gesture fails.

             struct LongPressGestureView: View {
                 @GestureState private var isDetectingLongPress = false
                 @State private var completedLongPress = false


                 var longPress: some Gesture {
                     LongPressGesture(minimumDuration: 3)
                         .updating($isDetectingLongPress) { currentState, gestureState,
                                 transaction in
                             gestureState = currentState
                             transaction.animation = Animation.easeIn(duration: 2.0)
                         }
                         .onEnded { finished in
                             self.completedLongPress = finished
                         }
                 }


                 var body: some View {
                     Circle()
                         .fill(self.isDetectingLongPress ?
                             Color.red :
                             (self.completedLongPress ? Color.green : Color.blue))
                         .frame(width: 100, height: 100, alignment: .center)
                         .gesture(longPress)
                 }
             }
 */

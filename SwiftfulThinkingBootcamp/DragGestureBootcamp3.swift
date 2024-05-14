//
//  DragGestureBootcamp3.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 14.05.2024.
//

import SwiftUI

struct DragGestureBootcamp3: View {
    
    // ... ⬛️
    // MARK: PROPERTIES
    @State private var startingOffsetY: CGFloat = UIScreen.main.bounds.height * 0.85
    @State private var currentDragOffsetY: CGFloat = 0
    @State private var endingOffsetY: CGFloat = 0
    
    // ... ⬛️
    // MARK: BODY
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            SignUpView()
                .offset(y: startingOffsetY)
                .offset(y: currentDragOffsetY)
                .offset(y: endingOffsetY)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            if !(endingOffsetY == -startingOffsetY && value.translation.height < 0) {
                                withAnimation(.spring()) {
                                    currentDragOffsetY = value.translation.height
                                }
                            }
                        })
                        .onEnded({ value in
                            withAnimation(.spring) {
                                if currentDragOffsetY < -150 {
                                    endingOffsetY = -startingOffsetY
                                } else if endingOffsetY != 0 && currentDragOffsetY > 150 {
                                    endingOffsetY = 0
                                }
                                currentDragOffsetY = 0
                            }
                        })
                )
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    DragGestureBootcamp3()
}

// ... ⬛️
struct SignUpView: View {
    var body: some View {
        VStack(spacing: 18) {
            Image(systemName: "chevron.up")
                .padding(.top)
            Text("Sign up")
                .font(.headline)
                .fontWeight(.semibold)
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundStyle(.red)
            Text("This is the decription for our app. This is my favorite SwiftUI course and I recommend to all of my friends to subscribe to Swiftful Thinking!")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Text("CREATE AN ACCOUNT")
                .foregroundStyle(.white)
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .background(.black, in: RoundedRectangle(cornerRadius: 10.0))
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 32.0, style: .continuous))
    }
}

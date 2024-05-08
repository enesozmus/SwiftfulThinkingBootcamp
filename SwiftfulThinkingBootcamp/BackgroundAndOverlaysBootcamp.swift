//
//  BackgroundAndOverlaysBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 7.05.2024.
//

import SwiftUI

struct BackgroundAndOverlaysBootcamp: View {
    var body: some View {
        VStack(spacing: 60) {
            Text("Hello, World!")
                .background(
                    //.red
                    //LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                    Circle().fill(.red)
                        .frame(width: 105, height: 105)
                )
            
            
            Text("Hello, World!")
                .font(.footnote)
                .background(
                    Circle().fill(.red)
                )
            
            Text("Hello, World!")
                .background(
                    Circle()
                        .fill(.blue)
                        .frame(width: 50, height: 50, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(.red)
                        .frame(width: 75, height: 75, alignment: .center)
                )
            
            Text("Hello, World!")
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 50, height: 50, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 75, height: 75, alignment: .center)
                )
            
            Circle()
                .fill(.pink)
                .frame(width: 50, height: 50, alignment: .center)
                .overlay(
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
            
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay(
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 50, height: 50)
                    , alignment: .topLeading
                )
                .background(
                    Rectangle()
                        .fill(.red)
                        .frame(width: 150, height: 150)
                    , alignment: .center
                )
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40.0))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                                           startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: .black, radius: 10,
                                x: 0.0, y: 10.0
                        )
                        .overlay(
                            Circle()
                                .fill(.pink)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("5")
                                        .font(.headline)
                                        .foregroundColor(.white))
                            , alignment: .bottomTrailing
                        )
                )
        }
    }
}

#Preview {
    BackgroundAndOverlaysBootcamp()
}

/*
 
    SwiftUI offers several different ways for us to create stacks of overlapping views that can be arranged along the Z axis.
 
    1-) ZStacks
 
        Like its name implies, SwiftUI’s ZStack type is the Z-axis equivalent of the horizontally-oriented HStack and the vertical VStack.
        When placing multiple views within a ZStack, they’re (by default) rendered back-to-front, with the first view being placed at the back.
 
    2-) The background modifier
 
        SwiftUI ships with a built-in tool that automatically resizes a given view’s background to perfectly fit its parent — the background modifier.
        There are multiple ways to apply clipping to a view, though, which would remove the above sort of out-of-bounds rendering. For example, we could use either the clipped or clipShape modifier to tell the view to apply a clipping mask to its bounds, or we could give our view rounded corners (which also introduces clipping).
        Of course, the simplest way to avoid drawing a background outside of the bounds of its parent view is to simply let the SwiftUI layout system automatically determine the size of each background. That way, the size of a given background will always perfectly match the size of its parent view.
 
    3-) Assigning overlays
 
        Layers a secondary view in front of this view.
        SwiftUI also supports adding overlays to views as well, which essentially act as the inverse of backgrounds — in that they’re rendered on top of their parent views.
 */

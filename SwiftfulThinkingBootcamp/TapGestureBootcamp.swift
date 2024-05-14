//
//  TapGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 14.05.2024.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    // ... ⬛️
    // MARK: PROPERTIES
    @State private var tapped: Bool = false
    @State private var isSelected: Bool = false
    
    // ✅
    var tap: some Gesture {
        TapGesture(count: 1)
            .onEnded { _ in self.tapped = !self.tapped }
    }
    
    // ... ⬛️
    // MARK: BODY
    var body: some View {
        // ... 🟦
        //        Circle()
        //            .fill(self.tapped ? Color.blue : Color.red)
        //            .frame(width: 100, height: 100, alignment: .center)
                      // ✅
        //            .gesture(tap)
        
        // ... 🟦
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            })
            
            Text("TAP Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                // 🟨
                //.onTapGesture {
                //    isSelected.toggle()
                //}
                // 🟨
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    TapGestureBootcamp()
}

/*
    🔴 TapGesture
        → A gesture that recognizes one or more taps.
        → To recognize a tap gesture on a view, create and configure the gesture, and then add it to the view using the gesture(_:including:) modifier.
 
        onTapGesture(count:perform:)
        onTapGesture(count:coordinateSpace:perform:)
        → Adds an action to perform when this view recognizes a tap gesture.

             struct TapGestureView: View {
                 @State private var tapped = false

                 var tap: some Gesture {
                     TapGesture(count: 1)
                         .onEnded { _ in self.tapped = !self.tapped }
                 }


                 var body: some View {
                     Circle()
                         .fill(self.tapped ? Color.blue : Color.red)
                         .frame(width: 100, height: 100, alignment: .center)
                         .gesture(tap)
                 }
             }
 */

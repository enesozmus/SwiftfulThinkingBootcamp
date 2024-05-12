//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 12.05.2024.
//

import SwiftUI

struct SliderBootcamp: View {
    
    // ... ⬛️
    @State private var speed = 50.0
    @State private var isEditing = false
    
    @State private var sliderValue: Double = 3
    @State private var color: Color = .red
    
    // ... ⬛️
    var body: some View {
        
        Text("\(sliderValue)")
        Text(String(format: "%.2f", sliderValue))
        
        // ... 🟦
        Slider(value: $sliderValue).tint(.red)
        Slider(value: $sliderValue, in: 0...10)
        Slider(value: $sliderValue, in: 1...5, step: 1.0)
        Slider(
            value: $sliderValue,
            in: 1...5,
            step: 1.0,
            minimumValueLabel:
                Text("1")
                .font(.largeTitle)
                .foregroundColor(.orange)
            ,
            maximumValueLabel: Text("5"),
            label: {
                Text("Title")
            })
        
        
        // ... 🟦
        VStack {
            Slider(
                value: $speed,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .blue)
        }
    }
}

#Preview {
    SliderBootcamp()
}

/*
    🔴 Slider
        → A control for selecting a value from a bounded linear range of values.
        → A slider consists of a “thumb” image that the user moves between two extremes of a linear “track”.
        → The ends of the track represent the minimum and maximum possible values.
        → As the user moves the thumb, the slider updates its bound value.

     @State private var speed = 50.0
     @State private var isEditing = false

     var body: some View {
         VStack {
             Slider(
                 value: $speed,
                 in: 0...100,
                 onEditingChanged: { editing in
                     isEditing = editing
                 }
             )
             Text("\(speed)")
                 .foregroundColor(isEditing ? .red : .blue)
         }
     }
 */

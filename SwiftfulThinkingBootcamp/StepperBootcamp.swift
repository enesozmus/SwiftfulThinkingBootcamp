//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 12.05.2024.
//

import SwiftUI

struct StepperBootcamp: View {
    
    // ... ⬛️
    @State private var value = 0
    let colors: [Color] = [.orange, .red, .gray, .blue,
                           .green, .purple, .pink]
    
    @State var stepperValue: Int = 10
    
    @State var widthIncrement: CGFloat = 0
    @State var heightIncrement: CGFloat = 0
    
    
    // ... ⬛️
    var body: some View {
        
        // ... 🟦
        Stepper("Stepper: \(stepperValue)", value: $stepperValue)
        
        // ... 🟦
        RoundedRectangle(cornerRadius: 25.0)
            .frame(
                width: 100 + widthIncrement,
                height: 100 + heightIncrement
            )
        Stepper("Rectangle") {
            // increment
            withAnimation(.easeInOut) {
                widthIncrement += 10
            }
            withAnimation(.easeInOut) {
                heightIncrement += 10
            }
        } onDecrement: {
            // decrement
            withAnimation(.easeInOut) {
                widthIncrement -= 10
            }
            withAnimation(.easeInOut) {
                heightIncrement -= 10
            }
            
        }
        
        // ... 🟦
        Stepper {
            Text("Value: \(value) Color: \(colors[value].description)")
        } onIncrement: {
            incrementStep()
        } onDecrement: {
            decrementStep()
        }
        .padding(5)
        .background(colors[value])
    }
    
    
    // ... ⬛️
    func incrementStep() {
        value += 1
        if value >= colors.count { value = 0 }
    }
    
    
    func decrementStep() {
        value -= 1
        if value < 0 { value = colors.count - 1 }
    }
}

#Preview {
    StepperBootcamp()
}

/*
    🔴 Stepper
        → A control that performs increment and decrement actions.
        → Use a stepper control when you want the user to have granular control while incrementing or decrementing a value.

         struct StepperView: View {
             @State private var value = 0
             let colors: [Color] = [.orange, .red, .gray, .blue,
                                    .green, .purple, .pink]

             func incrementStep() {
                 value += 1
                 if value >= colors.count { value = 0 }
             }


             func decrementStep() {
                 value -= 1
                 if value < 0 { value = colors.count - 1 }
             }


             var body: some View {
                 Stepper {
                     Text("Value: \(value) Color: \(colors[value].description)")
                 } onIncrement: {
                     incrementStep()
                 } onDecrement: {
                     decrementStep()
                 }
                 .padding(5)
                 .background(colors[value])
             }
         }

 struct StepperView: View {
     @State private var value = 0
     let step = 5
     let range = 1...50


     var body: some View {
         Stepper(
             value: $value,
             in: range,
             step: step
         ) {
             Text("Current: \(value) in \(range.description) " +
                  "stepping by \(step)")
         }
         .padding(10)
     }
 }
 */

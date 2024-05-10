//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 10.05.2024.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                //withAnimation(.default) {
                //withAnimation(.default.delay(3)) {
                //withAnimation(.default.repeatForever(autoreverses: true)) {
                    isAnimated.toggle()
                //}
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .black : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                //.rotationEffect(Angle(degrees:  isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}

/*
 
    ⚪️ Reference: https://medium.com/@midhlag55/swiftui-animations-the-basics-of-animations-and-transitions-5dfae5ce4268
 
    🔴 When it comes to animations in SwiftUI, the framework provides a set of tools and capabilities that make it straightforward to create smooth and visually appealing transitions and movements within your user interface.
 
    🔴 Combining these features allows SwiftUI developers to craft engaging and lifelike user interfaces through precise control of animation dynamics and duration.
 
    ⬛️ withAnimation() { } → It allows you to wrap the code that modifies the UI state in a way that triggers an animation for the specified duration.
 
    🟢 1. Declarative Animation Syntax:
 
        In SwiftUI, animations are declared alongside the view hierarchy. You can use the withAnimation(){} block to wrap the changes you want to animate. This block automatically animates the changes within its scope.

             withAnimation {
                 // Code to modify the UI state
             }
 
 
     🟢 2. State and Animation:
     
        SwiftUI leverages its state management system to trigger animations. When the state of a view changes, SwiftUI automatically computes the differences and animates the transitions.
        State changes automatically trigger animations in SwiftUI. When a property marked with @State changes, SwiftUI compares the new and old values and animates the transition.

             @State private var isAnimating = false
             // ...
             withAnimation {
                 isAnimating.toggle()
             }
 
    🟢 3. Animated Properties:
        
        Many SwiftUI views have animatable properties. When these properties change, SwiftUI automatically animates the transition. For example, changing the position, opacity, or size of a view will trigger a smooth animation.
        You can attach the animation modifier to specific views or view modifiers to customize the animation effect. This modifier allows you to specify the type and duration of the animation.

             Text("Hello, World!")
                 .offset(x: isAnimating ? 200 : 0)
                 .animation(.easeInOut)
 
    🟢 4. Animation Parameters:
 
        The withAnimation block and the animation modifier can take additional parameters to customize the animation behavior, such as duration, delay, and repeat count.
 
            withAnimation(.default) {
            }
            withAnimation(.default.delay(3)) {
            }
            withAnimation(.default.repeatForever(autoreverses: true)) {
            }
            withAnimation(.easeInOut(duration: 1.5)) {
                 // Code to modify the UI state
            }
 
    🟢 4.1 Nested Animations:
 
        SwiftUI supports nesting animations within each other.
 
             withAnimation {
                 // Outer animation
                 withAnimation(.easeInOut) {
                     // Inner animation
                     // Code to modify the UI state
                 }
             }
 
    🟢 5. Animation Types:
    
        SwiftUI supports various animation types out of the box, such as "linear", "ease-in", "ease-out", and "ease-in-out". You can choose the animation type based on the desired visual effect.

            .animation(.easeInOut)
 
    🟢 6. Custom Animations:
 
        SwiftUI allows you to create custom animations by implementing the Animatable protocol or using the UIViewRepresentable protocol to integrate UIKit-based animations.

             .animation(
                 Animation.linear(duration: 2)
                     .repeatForever(autoreverses: false)
             )
 
    🟢 7. Transitions:
 
        Transitions in SwiftUI control how views enter or exit the view hierarchy. You can apply transitions to individual views or to entire view hierarchies.

            .transition(.slide)
 
    🟢 8. Gesture-based Animation:
 
        SwiftUI integrates seamlessly with gestures, enabling interactive animations. You can respond to gestures like taps, drags, or rotations and update your UI accordingly.

             .gesture(
                 DragGesture()
                     .onChanged { value in
                         // Update UI based on drag position
                     }
                     .onEnded { value in
                         // Perform actions when the drag ends
                     }
             )
 
     🟢 9. Animating View Transitions:
 
        SwiftUI provides the onChange modifier to observe changes in the state and trigger animations. This is useful for animating transitions between different views.

             .onChange(of: someState) { newValue in
                 withAnimation {
                     // Code to animate view transition
                 }
             }
 
 
     Animation Types:
         1. Linear Animation:
         2. Ease-In Animation:
         3. Ease-Out Animation:
         4. Ease-In-Out Animation:
         5. Spring Animation:
         6. Interpolating Animation:
         7. Custom Timing Curve Animation:
         8. Custom Animations:

     Transitions:
         1. Default Transition:
         2. Slide Transition:
         3. Scale Transition:
         4. Custom Transition:
         5. Combined Transitions:
         6. AnyTransition:
         7. Conditional Transitions:
         8. Transition Animation Control:

     Gesture-based Animation:
         1. Tap Gesture:
         2. Drag Gesture:
         3. Rotation Gesture:
         4. Long Press Gesture:
         5. Pinch Gesture:
 */

// → In SwiftUI, animations are enriched by "the flexibility of timing curves" and "springs".
// → Timing curves, such as Linear, easeIn, easeOut, and easeInOut, offer predefined patterns for animation progression.
// → These curves enable developers to control the speed and acceleration of animations.

// → Additionally, custom durations can be applied to tailor the timing of any animation.
// → On the other hand, Springs simulate the behaviour of a physical spring, providing a more dynamic and natural feel to animations.
// → The damping ratio and initial velocity parameters define the characteristics of a spring animation.
// → A higher damping ratio results in quicker damping, while the initial velocity determines the animation’s starting speed.

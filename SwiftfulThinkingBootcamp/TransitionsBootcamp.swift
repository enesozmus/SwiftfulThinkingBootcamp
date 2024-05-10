//
//  TransitionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 10.05.2024.
//

import SwiftUI

struct TransitionsBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    withAnimation(.spring) {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.transition(.opacity)
                    //.transition(.scale)
                    //.transition(.slide)
                    //.transition(.move(edge: .leading))
                    //.transition(.move(edge: .top))
                    //.transition(AnyTransition.opacity.animation(.easeInOut))
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        //removal: .move(edge: .bottom)
                        removal: AnyTransition.opacity.animation(.easeIn)
                        )
                    )
                    
                    //🚫.animation(.easeInOut, value: showView)
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionsBootcamp()
}

/*
 
     🔴 Transitions in SwiftUI control how views enter or exit the view hierarchy. You can apply transitions to individual views or to entire view hierarchies.
 
    ⬛️ The transition modifier is applied to a specific view or view hierarchy, specifying the animation that should occur when the view enters or exits the screen.
    ⬛️ You can use predefined transition types or create custom transitions.
 
            -) Built-in Transition Types
                 .opacity: Fades in or out.
                 .scale: Scales in or out.
                 .slide: Slides in or out from different directions.
                 .move(edge:): Moves in or out from a specified ed
            -) Custom Transitions
                You can create custom transitions by conforming to the ViewModifier protocol.
                This allows you to define your own animation logic for entering and exiting views.

     🟢 1. Default Transition:
        The default transition is applied when a view is added or removed from the hierarchy. SwiftUI automatically applies a cross-fade animation by default.

     🟢 2. Opacity Transition:
        The .opacity transition is applied to smoothly fade in and out.
 
            .transition(.opacity)

     🟢 3. Slide Transition:
        The slide transition animates views in and out with a sliding motion. You can specify the direction of the slide (from leading, trailing, top, or bottom). By default, the slide transition slides in from the trailing edge, but you can customize it further.
 
            .transition(.slide)

     🟢 4. Scale Transition:
        The scale transition scales views in and out. You can control the scale factor and anchor point. The scale transition smoothly scales the image in and out.
 
            .transition(.scale)

     🟢 5. Custom Transition:
        SwiftUI allows you to create custom transitions by implementing the ViewModifier protocol. This gives you complete control over the animation.

             struct CustomTransition: ViewModifier {
                 func body(content: Content) -> some View {
                     // Implement custom animation logic here
                     content
                 }
             }
             // Usage:
             Text("Custom Transition")
                 .modifier(CustomTransition())
                 .transition(.identity) // Apply the custom transition

     🟢 6. Combined Transitions:
        You can combine multiple transitions to achieve complex effects. For example, you can combine slide and opacity transitions.
            
            .transition(.asymmetric(insertion: .slide, removal: .opacity))

     🟢 7. AnyTransition:
        The AnyTransition type allows you to compose transitions dynamically. You can create custom transition sequences based on conditions.
            
            .transition(AnyTransition.opacity.animation(.easeInOut))
 */

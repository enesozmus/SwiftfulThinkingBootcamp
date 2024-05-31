//
//  GeometryReaderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 30.05.2024.
//

import SwiftUI

// A container view that defines its content as a function of its own size and coordinate space.
// ❗️but very expensive
struct GeometryReaderBootcamp: View {
    var body: some View {
        
        // ... 🔵
        NavigationStack {
            VStack {
                Rectangle()
                    .fill(.pink)
                    .frame(height: 200)
                GeometryReader { proxy in
                    Rectangle()
                        .fill(.green)
                    VStack(alignment: .leading) {
                        //                        Text("\(proxy.frame(in: .local).debugDescription)")
                        //                        Text("\(proxy.frame(in: .global).debugDescription)")
                        //                        Text("\(proxy.frame(in: .named("VStack")).debugDescription)")
                        // -> extension
                        Text(proxy.info(space: .local))
                        Text(proxy.info(space: .global))
                        Text(proxy.info(space: .named("VStack")))
                    }
                }
            }
            .coordinateSpace(name: "VStack")
            .background(.teal)
        }
        //        HStack(spacing: 0) {
        //            Rectangle()
        //                .fill(.red)
        //            Rectangle()
        //                .fill(.blue)
        //        }
        //        .ignoresSafeArea()
        
        //        HStack(spacing: 0) {
        //            Rectangle()
        //                .fill(.red)
        //                // ❗️landscape left or right
        //                .frame(width: UIScreen.main.bounds.width * 0.6666)
        //            Rectangle()
        //                .fill(.blue)
        //        }
        //        .ignoresSafeArea()
        
        // ... 🔵
        //        GeometryReader { geometry in
        //            HStack(spacing: 0) {
        //                Rectangle()
        //                    .fill(.red)
        //                    .frame(width: geometry.size.width * 0.6666)
        //                Rectangle()
        //                    .fill(.blue)
        //            }
        //            .ignoresSafeArea()
        //        }
        
        // ... 🔵
        //        GeometryReader { geometry in
        //            VStack {
        //                ForEach(0..<10) { index in
        //                    Rectangle()
        //                        .fill(.blue)
        //                        .frame(
        //                            width: geometry.size.width * CGFloat(index + 1) / 10,
        //                            height: geometry.size.height / 10
        //                        )
        //                }
        //            }
        //        }
        
        // ... 🔵
        //        ScrollView(.horizontal, showsIndicators: false) {
        //            HStack {
        //                ForEach(0..<20) { index in
        //                    GeometryReader { geometry in
        //                        RoundedRectangle(cornerRadius: 20)
        //                            .rotation3DEffect(
        //                                Angle(degrees: getPercentage(geometryProxy: geometry) * 40),
        //                                axis: (x: 0.0, y: 1.0, z: 0.0)
        //                            )
        //                    }
        //                    .frame(width: 200, height: 100)
        //                    .padding()
        //                }
        //            }
        //        }
    }
    
    func getPercentage(geometryProxy: GeometryProxy) -> Double {
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentX = geometryProxy.frame(in: .global).midX
        return Double(1 - (currentX / maxDistance))
    }
}

#Preview {
    GeometryReaderBootcamp()
}

/*
    → While it's generally better to use the autosizing provided by SwiftUI, sometimes we can't get the look you want.
    → GeometryReader is perfect for situations like this.
    → GeometryReader is a powerful tool in SwiftUI that allows us to access and manipulate the size and position of a view.
    → It is especially useful when we need to create custom layouts or animations.
    ✅ To use GeometryReader, you simply wrap your view in it.
    → Inside the closure, you can access an argument that is a geometry proxy that provides information about the size and position of the view.
 */

/*
     NavigationStack {
         VStack {
                // → Text View will only claim as much as space as it needs.
                // → The VStack then completely collapses around the Text View.
                // → Now the NavigationStack itself is a container and the VStack is placed inside at the center and the Text View is centered inside the VStack.
             Text("Hello")
         }
         .background(.teal)
     }
 */

/*
     NavigationStack {
         VStack {
                // → Text View will only claim as much as space as it needs.
                // → The VStack then completely collapses around the Text View.
                // → Now the NavigationStack itself is a container and the VStack is placed inside at the center and the Text View is centered inside the VStack.
             Text("Hello")
 
                // → The Rectangle View and the Text View have to lay themselves out within the availavle VStack space offered.
                // → So the Rectangle View greedy though and unless we strained with the frame it'll take up as much space as it can get its hands on.
             Rectangle()
                 .fill(.pink)
         }
         .background(.teal)
     }
 */

/*
     NavigationStack {
         VStack {
                // → So the Rectangle View greedy though and unless we strained with the frame it'll take up as much space as it can get its hands on.
             Rectangle()
                 .fill(.pink)
 
                 // → Unlike other container views a GeometryReader acts like a greedy Rectangle View or Color View and wants to take up as much space as possible.
                 // → And it is made available to it just like our pink Rectangle View above.
                 // → So the layout system will fight for the amount of space available and since both are equally as a greedy the whole screen says: "Okay, let's divide it up evenly."
             GeometryReader { proxy in
             }
         }
         .background(.teal)
     }
 */

/*
     NavigationStack {
         VStack {
                 // → Let me now set a .frame() to restrict the height of the Rectangle View above say to a frame of 200.
                 // → Notice how the GeometryReader fills in the gap but there's another difference
             Rectangle()
                 .fill(.pink)
                 .frame(height: 200)
 
                // → If I set a .frame() on this rectangle something weird happens the rectangle isn't positioned at the center of the GeometryReader instead its origin is the top Leading Edge.
             GeometryReader { proxy in
                 Rectangle()
                     .fill(.green)
                     .frame(width: 100, height: 100)
             }
         }
         .background(.teal)
     }
 */

/*
     NavigationStack {
         VStack {
             Rectangle()
                 .fill(.pink)
                 .frame(height: 200)
 
             GeometryReader { proxy in
                 Rectangle()
                     .fill(.green)
                     .frame(width: 100, height: 100)
 
                    // → What if I add a Text View here, as well well the GeometryReader in this case acts like a ZStack and places all Views one on top of each other but unlike those other container views it places it where the origin is which is the top Leading Edge where the coordinates are 0 0 in the local geometry space.
                 Text("Where am I?")
             }
         }
         .background(.teal)
     }
 */

/*
     NavigationStack {
         VStack {
             Rectangle()
                 .fill(.pink)
                 .frame(height: 200)
             GeometryReader { proxy in
                 Rectangle()
                     .fill(.green)
                     .frame(width: 100, height: 100)
                     // → What if I add a Text View here, as well well the GeometryReader in this case acts like a ZStack and places all Views one on top of each other but unlike those other container views it places it where the origin is which is the top Leading Edge where the coordinates are 0 0 in the local geometry space.
                 Text("Where am I 1?")
                     // → Now if I want to reposition this View to somewhere else, I can provide a .position(x:y:) modifier to the View.
                     // → If I specify X being 0 and Y being 0, we see that our Text View moves so that the center of the view is positioned at that top leading coordinate 0 0.
                 Text("Where am I 2?")
                     .position(x: 0, y: 0)
                     // → But If I don't want this Text View at the top left,  so I can place it specifically within the geometry space because the proxy variable that we have knows a number of things about the GeometryReader's container.
                     // → It has a .frame() property that tells us both the coordinates of the origin of the view and it knows the size of the container namely the width and height.
                     // → So if we want to position this Text View right in the middle of itself its own geometry view, we access the proxies .frame(in:) the local space.
                     // → Then that gives us the ability to pick either the minimum (the mid) or the maximum (the max) X and Y values of our frame size.
                     // → So if we want to set the position of this Text View to be right in the middle of our GeometryReaders container, we access the proxies local frame and then specify the mid X and mid y positions.
                     // → Well that's positioning a view within a GeometryReader's local space.
                 Text("Where am I 3?")
                     .position(
                             x: proxy.frame(in: .local).midX,
                             y: proxy.frame(in: .local).midY
                     )
             }
         }
         .background(.teal)
     }
 */

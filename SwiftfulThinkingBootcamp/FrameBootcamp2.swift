//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 7.05.2024.
//

import SwiftUI

struct FrameBootcamp2: View {
    
    @State private var width: CGFloat = 50.0
    
    var body: some View {

        /*
         
            When we use this method, it may seem we are forcing the view’s width and height.
            That is usually the visual effect we achieve.
            However, that is not what is going on!
         
            What we are really doing, is changing _the offered size_.
            What the view will do with it, will be up to the view itself.
            Most views will adjust to the new offered size, which may lead us to the false assumption that we forced the size of the view.
            But we did not!
         
            Consider the following example.
            We are using .frame() to change what’s offered to the child.
            Still, the subview will not take it, if it is below 120.
         */
        
        VStack {
            SubView()
                .frame(width: self.width, height: 120)
                .border(.blue, width: 2)
            
            Text("Offered Width \(Int(width))")
            Slider(value: $width, in: 0...200, step: 1)
        }
    }
}

struct SubView: View {
    var body: some View {
        GeometryReader { proxy in
            Rectangle()
                .fill(.yellow.opacity(0.7))
                .frame(
                    width: max(proxy.size.width, 120),
                    height: max(proxy.size.height, 120)
                )
        }
    }
}

#Preview {
    FrameBootcamp2()
}

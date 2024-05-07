//
//  FrameBootcamp1.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 7.05.2024.
//

import SwiftUI

struct FrameBootcamp1: View {
    var body: some View {
        
        // No matter what it is it has a frame
        // and we can manipulate those frames
        Text("Hello, SwiftUI!")
            .background(.red)
        
        Text("Hello, SwiftUI! Hello again!")
            .background(.red)
        
        Text("Hello, SwiftUI! Hello again!")
            .background(.purple)
            .frame(width: 150, height: 100, alignment: .center)
            .background(.red)
        
        Text("Hello, SwiftUI! Hello again!")
            .background(.blue.opacity(0.7))
            .frame(maxWidth: .infinity, alignment: .center)
            .background(.red)
        
        Text("Hello, SwiftUI!")
            .font(.largeTitle)
            .frame(width: 300, height: 200, alignment: .bottomLeading)
            .border(Color.red)
        
        Rectangle()
            .fill(.yellow.opacity(0.7))
            .frame(width: 10, height: 10)
    }
}

#Preview {
    FrameBootcamp1()
}

/*
     https://swiftui-lab.com/frame-behaviors/
     
     We can group "views" by the way they react to the offered space:
     
        1-) "Views" that will only take as much space as needed to fit their own content. Stack containers are one example.
     
        2-) "Views" that will take only what they need. And if what they’ve been offered is not enough to draw all the contents, they will do their best to respect the offered space.
     
        3-) "Views" that will grow to fill all the space offered (but not a pixel more). Shapes are usually a good example, such as Rectangle().
     
        4-) "Views" that may decide to draw even outside the area offered by the parent. "Some custom views" can use this approach. For example, a speech balloon may draw the little tail outside its bounds.
     
     Note : "Text views" are a mixed example: If not enough horizontal space is available they will either truncate or wrap the text. However vertically, at least one line of text will be shown, irrespective of how small the frame might be.
 */

// → There’s a lot going on when we use modifiers (such as .frame()).
// → Modifiers in SwiftUI do not actually modify views.
// → Most of the time, when we apply a modifier on a view, a new view is created that is wrapped around the view being “modified”.
// → It is that wrapper view that we must think of as the “frame”.
// → Frame → Positions related view within an invisible frame with the specified size.

// → Trying to adjust the size or position of a view in SwiftUI can sometimes be unpredictably difficult if you don’t fully understand "frames" and "alignment".
// → "A frame" in SwiftUI is a rectangular area that describes the position and size of a view, comparable to a box enclosing the view’s content.
// → The frame’s position is influenced by the view’s location within its parent view, and its size is defined by the view’s intrinsic content size or by the modifiers applied to it.

//
//  OnAppearAndOnDisappearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 13.05.2024.
//

import SwiftUI

struct OnAppearAndOnDisappearBootcamp: View {
    
    // ... ⬛️
    // MARK: PROPERTIES
    @State private var myText: String = "Start text."
    @State private var count: Int = 0
    
    // ... ⬛️
    // MARK: BODY
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                // > 🟧 The catch is that, if you didn't scroll straight all the way to the bottom, your count will be extra, because onAppear() will call even if you scroll up and down a little bit, because rectangle is generating whether you scroll up or down.
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
            })
            .onDisappear(perform: {
                // > 🟧 You wanted to cancel all those functions when the user leaves the screen
                myText = "The end"
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}

#Preview {
    OnAppearAndOnDisappearBootcamp()
}

/*
    🔴 onAppear(perform:)
        → Adds an action to perform before this view appears.
        → action: The action to perform. If action is nil, the call has no effect.

    🔴 onDisappear(perform:)
        → Adds an action to perform after this view disappears.
        → action: The action to perform. If action is nil, the call has no effect.
 
    🟣 DispatchQueue
        → An object that manages the execution of tasks serially or concurrently on your app's main thread or on a background thread.
        → https://developer.apple.com/documentation/dispatch/dispatchqueue
 */

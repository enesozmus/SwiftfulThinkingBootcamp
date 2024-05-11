//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 11.05.2024.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            VStack {
                Button("Button") {
                    withAnimation(.spring) {
                        showNewScreen.toggle()
                    }
                }
                .font(.largeTitle)
                Spacer()
            }
            // METHOD 1 - SHEET or fullScreenCover
            //            .sheet(isPresented: $showNewScreen, content: {
            //                NewScreen()
            //            })
            
            // METHOD 2 - TRANSITION
            ZStack {
                if showNewScreen {
                    NewScreen(showNewScreen: $showNewScreen)
                        .padding(.top, 48)
                        .transition(.move(edge: .bottom))
                    //.animation(.spring, value: showNewScreen)
                }
            }
            .zIndex(2.0)
            
            // METHOD 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 48)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring, value: showNewScreen)
        }
    }
}

struct NewScreen: View {
    
    // An action that dismisses the current presentation.
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Color.purple
                .ignoresSafeArea()
            
            Button(action: {
                dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
        }
    }
}

#Preview {
    PopoverBootcamp()
    //NewScreen()
}

//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 8.05.2024.
//

import SwiftUI

struct SpacerBootcamp: View {
    
    // spacer() will basically just resize as big as possible within the frame.
    
    /*
     A flexible space
     A spacer creates "an adaptive view with no content" that expands as much as it can.
     For example, when placed within an HStack, a spacer expands horizontally as much as the stack allows, moving sibling views out of the way, within the limits of the stack’s size.
     SwiftUI sizes a stack that doesn’t contain a spacer up to the combined ideal widths of the content of the stack’s child views.
     */
    
    var body: some View {
        VStack(spacing: 12.0) {
            HStack(spacing: 0) {
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
                
                Rectangle()
                    .frame(width: 100, height: 100)
                
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
                
                Rectangle()
                    .frame(width: 100, height: 100)
                
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
                
                Rectangle()
                    .frame(width: 100, height: 100)
                
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
            }
            .background(.blue)
            
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(.green)
                Image(systemName: "gear")
            }
            .font(.title)
            .background(.yellow)
            .padding(.horizontal, 12)
            
            Spacer()
                .frame(width: 10)
                .background(.green)
        }
    }
}

#Preview {
    SpacerBootcamp()
}

//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 10.05.2024.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isStartingState.toggle()
            }
            Text(isStartingState ? "small-red" : "big-range")
            
            Rectangle()
                .fill(isStartingState == true ? .red : .orange)
                .frame(
                    width: isStartingState ? 150 : 300,
                    height: isStartingState ? 75 : 150)
        }
    }
}

#Preview {
    TernaryBootcamp()
}

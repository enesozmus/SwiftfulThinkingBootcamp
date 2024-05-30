//
//  ScrollViewReaderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 30.05.2024.
//

import SwiftUI

struct ScrollViewReaderBootcamp: View {
    
    
    @Namespace var topID
    @Namespace var bottomID
    
    @State var textFieldText: String = ""
    @State var scrollToIndex: Int = 0
    
    var body: some View {
        VStack {
            
            TextField("Enter a # here", text: $textFieldText)
                .frame(height: 55)
                .border(.gray)
                .padding(.horizontal)
                .keyboardType(.numberPad)
            
            Button {
                withAnimation(.easeInOut) {
                    if let index: Int = Int(textFieldText) {
                        scrollToIndex = index
                    }
                }
            } label: {
                Text("Scroll Now")
            }
            
            ScrollViewReader { proxy in
                ScrollView {
                    Button {
                        withAnimation(.easeIn) {
                            proxy.scrollTo(bottomID)
                        }
                    } label: {
                        Text("Scroll to Bottom")
                    }
                    .id(topID)
                    
                    ForEach(0..<50) { index in
                        Text("This item #\(index)")
                            .font(.headline)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(.white, in: RoundedRectangle(cornerRadius: 20))
                            .shadow(radius: 10)
                            .padding()
                            .id(index)
                    }
                    .onChange(of: scrollToIndex) {
                        withAnimation(.spring) {
                            proxy.scrollTo(scrollToIndex)
                        }
                    }
                    
                    Button {
                        withAnimation(.easeIn) {
                            proxy.scrollTo(topID)
                        }
                    } label: {
                        Text("Scroll to Top")
                    }
                    .id(bottomID)
                }
            }
        }
    }
}

#Preview {
    ScrollViewReaderBootcamp()
}

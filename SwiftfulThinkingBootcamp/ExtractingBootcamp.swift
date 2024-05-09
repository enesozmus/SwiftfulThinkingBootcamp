//
//  ExtractingFunctionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 9.05.2024.
//

import SwiftUI

struct ExtractingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            // content
            contentLayer
        }
    }
    
    
    // 🟢
    var contentLayer: some View {
        HStack {
            Button(action: {
                makePink()
            }, label: {
                Text("Make pink")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10.0)
            })
            Button(action: {
                makeYellow()
            }, label: {
                Text("Make yellow")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10.0)
            })
            MyItemm(backgroundColor: $backgroundColor)
        }
    }
    
    
    // 🟢
    func makePink() {
        self.backgroundColor = .pink
    }
    func makeYellow() {
        self.backgroundColor = .yellow
    }
}

#Preview {
    ExtractingBootcamp()
}

// 🟢
struct MyItemm: View {
    
    // 🟢
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            makeBlack()
        }, label: {
            Text("Make black")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(.black)
                .cornerRadius(10.0)
        })
    }
    
    // 🟢
    func makeBlack() {
        self.backgroundColor = .black
    }
}

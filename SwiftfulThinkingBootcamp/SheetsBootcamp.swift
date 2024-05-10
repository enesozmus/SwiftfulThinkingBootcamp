//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 10.05.2024.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                Text("Hi")
            })
            //            .sheet(isPresented: $showSheet, content: {
            //                //Text("Hi")
            //                SecondScreen()
            //            })
        }
    }
}

struct SecondScreen : View {
    
    // An action that dismisses the current presentation.
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        Text("Hello, I'm the second screen!")
            .font(.largeTitle)
        
        ZStack(alignment: .topLeading) {
            Color.green
                .ignoresSafeArea()
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.red)
                    .font(.largeTitle)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
        }
    }
}

#Preview {
    SheetsBootcamp()
    //SecondScreen()
}

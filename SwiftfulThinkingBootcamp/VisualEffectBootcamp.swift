//
//  VisualEffectBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 2.06.2024.
//

import SwiftUI

struct VisualEffectBootcamp: View {
    
    @State var showSpacer: Bool = false
    
    var body: some View {
        
        //        GeometryReader { geometry in
        //            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit!")
        //                .padding()
        //                .background(.red)
        //                .grayscale(/*@START_MENU_TOKEN@*/0.50/*@END_MENU_TOKEN@*/)
        //        }
        //        .background(.green)
        //        .padding()
        
        //        VStack {
        //            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit!")
        //                .padding()
        //                .background(.red)
        //                .visualEffect { content, geometry in
        //                    content
        //                        .grayscale(
        //                            //.grayscale(geometry.size.width >= 200 ? 1 : 0)
        //                            geometry.frame(in: .global).minY >= 200 ? 1 : 0
        //                        )
        //            }
        //            if showSpacer {
        //                Spacer()
        //            }
        //        }
        //        .animation(.easeIn, value: showSpacer)
        //        .onTapGesture {
        //            showSpacer.toggle()
        //        }
        
        ScrollView {
            VStack(spacing: 18) {
                ForEach(0..<74) { index in
                    Rectangle()
                        .frame(width: 60, height: 30)
                        .frame(maxWidth: .infinity)
                        .background(.green)
                        .visualEffect { content, geometry in
                            content
                                .offset(x: geometry.frame(in: .global).minY * 0.07)
                        }
                }
            }
        }
    }
}

#Preview {
    VisualEffectBootcamp()
}

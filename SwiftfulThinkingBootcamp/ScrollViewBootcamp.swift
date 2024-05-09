//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 9.05.2024.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        // 🟦 one ScrollView
        //        ScrollView(.horizontal, showsIndicators: false) {
        //            HStack {
        //                ForEach(0..<18) { index in
        //                    Rectangle()
        //                        .frame(width: 140, height: 80)
        //                }
        //            }
        //        }
        
        // 🟦 two ScrollView
        //        ScrollView {
        //            LazyVStack {
        //                ForEach(0..<10) { index in
        //                    ScrollView(.horizontal, showsIndicators: false) {
        //                        HStack {
        //                            ForEach(0..<20) { index in
        //                                RoundedRectangle(cornerRadius: 25.0)
        //                                    .fill(.white)
        //                                    .frame(width: 200, height: 150)
        //                                    .shadow(radius: 10)
        //                                    .padding()
        //                            }
        //                        }
        //                    }
        //                }
        //            }
        //        }
        
        // 🟦
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    let _x = index
                    ScrollView(.horizontal, showsIndicators: false)
                    {
                        LazyHStack {
                            ForEach(0..<10) { index in
                                ZStack {
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .fill(
                                            Color(
                                                red: 0.0 + Double(index) * 0.1,
                                                green: 0.1 + Double(_x) * 0.1,
                                                blue: 1.0
                                            )
                                        )
                                        .frame(width: 200, height: 150)
                                        .shadow(radius: 10)
                                        .padding()
                                    Text("\(_x) - \(index)")
                                }
                            }
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    ScrollViewBootcamp()
}

//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 8.05.2024.
//

import SwiftUI

struct StacksBootcamp: View {
    // VStack -> vertical
    // HStack -> horizontal
    // ZStack -> zIndex (back to front)
    var body: some View {
        //VStack {
        //HStack {
        //ZStack {
        //            Rectangle()
        //                .fill(.red)
        //                .frame(width: 100, height: 100)
        //            Rectangle()
        //                .fill(.black)
        //                .frame(width: 100, height: 100)
        //            Rectangle()
        //                .fill(.green)
        //                .frame(width: 100, height: 100)
        //        }
        //        VStack(alignment: .center, spacing: 0.0) {
        //            Rectangle()
        //                .fill(.red)
        //                .frame(width: 100, height: 100)
        //            Rectangle()
        //                .fill(.black)
        //                .frame(width: 100, height: 100)
        //            Rectangle()
        //                .fill(.green)
        //                .frame(width: 80, height: 80)
        //        }
        
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            
            VStack {
                Rectangle()
                    .fill(.black)
                    .frame(width: 150, height: 150, alignment: .center)
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100, alignment: .center)
                HStack {
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50, alignment: .center)
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50, alignment: .center)
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50, alignment: .center)
                }
            }
            .background(.pink)
        }
        
        
        VStack(spacing: 40.0) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(Circle().fill(.black).frame(width: 100, height: 100))
        }
        
    }
}

#Preview {
    StacksBootcamp()
}

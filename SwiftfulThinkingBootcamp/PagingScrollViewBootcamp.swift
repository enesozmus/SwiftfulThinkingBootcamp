//
//  PagingScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 2.06.2024.
//

import SwiftUI

struct PagingScrollViewBootcamp: View {
    
    @State var scrollPosition: Int? = nil
    
    var body: some View {
        VStack {
            Button {
                scrollPosition = (0...21).randomElement()!
            } label: {
                Text("SCROLL TO")
            }
            ScrollView(.horizontal) {
                HStack(spacing: 0) {
                    ForEach(0...21, id: \.self) { index in
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width: 300, height: 300)
                            .overlay(Text("\(index)").foregroundStyle(.white))
                            .frame(maxWidth: .infinity)
                            .padding(8)
                            .id(index)
                            .scrollTransition(.interactive.threshold((.visible(0.9)))) { content, phase in
                                content
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .offset(y: phase.isIdentity ? 0 : -100)
                            }
                            //.containerRelativeFrame(.vertical, alignment: .center)
                    }
                }
            }
            .ignoresSafeArea()
            .scrollTargetLayout()
            .scrollTargetBehavior(.viewAligned)
            //.scrollTargetBehavior(.paging)
            .scrollBounceBehavior(.basedOnSize)
            .scrollPosition(id: $scrollPosition, anchor: .center)
            .animation(.smooth, value: scrollPosition)

        }
        // 🔵 TikTok UI
        //        ScrollView {
        //            VStack(spacing: 0) {
        //                ForEach(0...21, id: \.self) { index in
        //                    Rectangle()
        //                        //.frame(width: 90, height: 45)
        //                        .overlay(Text("\(index)").foregroundStyle(.white))
        //                        .frame(maxWidth: .infinity)
        //                        .padding(.vertical, 12)
        //                        .containerRelativeFrame(.vertical, alignment: .center)
        //                }
        //            }
        //        }
        //        .ignoresSafeArea()
        //        .scrollTargetLayout()
        //        //.scrollTargetBehavior(.viewAligned)
        //        .scrollTargetBehavior(.paging)
        //        .scrollBounceBehavior(.always)
    }
}

#Preview {
    PagingScrollViewBootcamp()
}

//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 9.05.2024.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(75), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil)
        
        //        GridItem(.flexible())
        
        //        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
        //        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil)
        
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
        
    ]
    
    var body: some View {
        //        LazyVGrid(columns: columns) {
        //            ForEach(0..<50) { index in
        //                Rectangle()
        //                    .frame(height: 50)
        //            }
        //        }
        
        ScrollView {
            Rectangle()
                .fill(.orange)
                . frame(height: 400)
            LazyVGrid(
                columns: columns,
                alignment: .center,
                pinnedViews: [],
                content: {
                    Section(header:
                                Text("Section 1")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.blue)
                            .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    Section(header:
                                Text("Section 2")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(.blue)
                                .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                })
        }
    }
}

#Preview {
    GridBootcamp()
}

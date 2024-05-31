//
//  ImageGridView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 31.05.2024.
//
// Stewart Lynch

import SwiftUI

struct ImageGridView: View {
    
    @State private var numImages: Double = 7
    
    var body: some View {
        var imageNames: [String] {
            Array(1...Int(numImages)).map {"Palm-\($0)"}
        }
        VStack {
            Slider(value: $numImages, in: 1...7, step: 1.0)
            
            //            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 4)) {
            //                ForEach(imageNames, id: \.self) { name in
            //                    Image(name)
            //                        .resizable()
            //                        .aspectRatio(1,contentMode: .fill)
            //                        .border(Color.black)
            //                }
            //            }
            //            Spacer()
            
            GeometryReader { geometry in
                
                // iPhone 15 Pro -> geometry.size.width --> 361,000000
                // iPhone 15 Pro -> 90,250
                let minCellWidth: CGFloat = geometry.size.width / 4
                // iPhone 15 Pro -> imageNames.count 7 --> 51,571429
                // iPhone 15 Pro -> imageNames.count 6 --> 60,166667
                // iPhone 15 Pro -> imageNames.count 5 --> 72,200000
                // iPhone 15 Pro -> imageNames.count 4 --> 90,250000
                // iPhone 15 Pro -> imageNames.count 3 --> 120,33333
                // iPhone 15 Pro -> imageNames.count 2 --> 180,50000
                // iPhone 15 Pro -> imageNames.count 1 --> 361,00000
                let maxCellWidth: CGFloat = geometry.size.width / CGFloat(imageNames.count)
                // iPhone 15 Pro -> 90,250
                // iPhone 15 Pro -> 120,33333
                // iPhone 15 Pro -> 180,50000
                // iPhone 15 Pro -> 361,00000
                let optimalCellWidth: CGFloat = max(minCellWidth, maxCellWidth)
                // 4...3..2..1
                let numberOfColumns: Int = Int(geometry.size.width / optimalCellWidth)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: numberOfColumns)) {
                    ForEach(imageNames, id: \.self) { name in
                        Image(name)
                            .resizable()
                            .aspectRatio(1,contentMode: .fill)
                            .border(Color.black)
                    }
                }
            }
        }
        .padding()
    }}

#Preview {
    ImageGridView()
}

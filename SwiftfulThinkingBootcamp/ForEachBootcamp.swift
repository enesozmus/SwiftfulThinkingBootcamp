//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 9.05.2024.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        VStack {
            //            Text("ONE")
            //            Text("TWO")
            //            Text("THREE")
            //
            //            ForEach(0..<10) { index in
            //                HStack {
            //                    Circle()
            //                        .frame(width: 40, height: 40)
            //                    Text("Index is: \(index)")
            //                }
            //            }
            
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}

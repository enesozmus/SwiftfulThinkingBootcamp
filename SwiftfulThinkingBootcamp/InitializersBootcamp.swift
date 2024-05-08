//
//  InitializersBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 8.05.2024.
//

import SwiftUI

struct InitializersBootcamp: View {
    
    // We can actually create variables outside of the body
    
    // ✅ 1
    // let withoutAValue: Color
    let withoutAValueWithInit: Color
    let backgroundColor: Color = Color.yellow.opacity(0.7)
    let count: Int = 5
    let title: String = "Apples"
    
    // ✅ 1.1
    //    init(withoutAValue: Color) {
    //        self.withoutAValue = withoutAValue
    //    }
    
    // 🟦 2
    //        init() {
    //            if title == "Apples" {
    //                self.withoutAValueWithInit = .red
    //            } else {
    //                self.withoutAValueWithInit = .orange
    //            }
    //        }
    
    // 🟧 3
    init(fruit: Fruit) {
        if fruit == .apple {
            self.withoutAValueWithInit = .red
        } else {
            self.withoutAValueWithInit = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    // ...
    var body: some View {
        VStack(spacing: 12.0) {
            //Text("5")
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            //Text("Apples")
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        //.background(.red.opacity(0.3))
        //.background(backgroundColor)
        .background(withoutAValueWithInit)
    }
}

#Preview {
    // InitializersBootcamp()
    // ✅ 1.2
    // InitializersBootcamp(withoutAValue: .red)
    // 🟦 2
    // InitializersBootcamp()
    // 🟧 3
    HStack {
        InitializersBootcamp(fruit: .orange)
        InitializersBootcamp(fruit: .apple)
    }
}

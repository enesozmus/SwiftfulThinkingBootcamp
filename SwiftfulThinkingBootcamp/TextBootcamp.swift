//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 7.05.2024.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! Hello, World! Hello, World!".uppercased())
        //            .font(.largeTitle)
        //            .fontWeight(.thin)
        //            .foregroundColor(Color.orange)
        //            .multilineTextAlignment(.center)
        //            .multilineTextAlignment(.leading)
        //            .multilineTextAlignment(.trailing)
        //            .italic()
        //            .underline()
        //            .underline(color: Color.red)
        //            .strikethrough()
            .font(.system(size: 52, weight: .light, design: .rounded))
            .baselineOffset(-25)
            .kerning(4.0)
            .frame(width: 200, height: 178)
            .minimumScaleFactor(0.5)
    }
}

#Preview {
    TextBootcamp()
}

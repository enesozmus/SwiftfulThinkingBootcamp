//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 7.05.2024.
//

import SwiftUI

struct ColorsBootcamp: View {
    
    //var color = #colorLiteral( press enter
    var _color = #colorLiteral(red: 0.7889762521, green: 0.9780645967, blue: 0.8486859202, alpha: 1)
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //                .pink
                //                Color(_color)
                Color(uiColor: .orange)
                
            )
            .frame(width: 100, height: 50)
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                Color("_firstColor")
            )
        //shadow(radius: 30)
            .shadow(
                color: .red.opacity(0.3),
                radius: 7,
                x: -12.0,
                y: -12.0
            )
            .frame(width: 100, height: 50)
            .padding(.top, 5)
    }
}

#Preview {
    ColorsBootcamp()
}

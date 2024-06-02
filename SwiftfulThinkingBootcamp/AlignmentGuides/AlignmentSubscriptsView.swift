//
//  AlignmentSubscriptsView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 1.06.2024.
//
// Stewart Lynch

import SwiftUI

struct AlignmentSubscriptsView: View {
    var body: some View {
        VStack {
            HStack(alignment: .bottom) {
                Image(systemName: "1.circle.fill")
                Image(systemName: "2.circle.fill")
                //                    .alignmentGuide(.bottom) { d in
                //                        d[VerticalAlignment.center]
                //                    }
                Image(systemName: "3.circle.fill")
                //                    .alignmentGuide(.bottom) { d in
                //                        d[.top]
                //                    }
            }
            .font(.largeTitle)
            .border(.red)
            
            Divider()
            
            HStack(alignment: .bottom, spacing: 0) {
                Text("H")
                Text("2").font(.title2)
                //                    .alignmentGuide(.bottom) { d in
                //                        d[.bottom] - 5
                //                    }
                Text("O")
            }
            .font(.largeTitle)
            
            Divider()
            
            HStack {
                Image(systemName: "lightbulb.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                //                    .alignmentGuide(VerticalAlignment.center) { d in
                //                        d[.bottom]
                //                    }
                Text("Energy")
                    .font(.largeTitle)
                //                    .alignmentGuide(VerticalAlignment.center) { d in
                //                        d[.firstTextBaseline]
                //                    }
            }
        }
    }
}

#Preview {
    AlignmentSubscriptsView()
}

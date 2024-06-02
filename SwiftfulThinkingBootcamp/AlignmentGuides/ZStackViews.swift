//
//  ZStackViews.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 1.06.2024.
//
// Stewart Lynch

import SwiftUI

struct ZStackViews: View {
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.red)
                Rectangle()
                    .frame(width: 75, height: 50)
                    .foregroundStyle(.blue)
                    .alignmentGuide(.leading) { _ in
                        50
                    }
            }
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.red)
                //                    .alignmentGuide(.top) { _ in
                //                        -50
                //                    }
                Rectangle()
                    .frame(width: 50, height: 75)
                    .foregroundStyle(.blue)
                
            }
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.red)
                Rectangle()
                    .frame(width: 50, height: 75)
                    .foregroundStyle(.blue)
                //                    .alignmentGuide(HorizontalAlignment.center) { _ in
                //                        75
                //                    }
                //                    .alignmentGuide(VerticalAlignment.center) { _ in
                //                        75
                //                    }
            }
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.red)
                Rectangle()
                    .frame(width: 75, height: 50)
                    .foregroundStyle(.blue)
                //                    .alignmentGuide(.leading) { d in
                //                        d.width / 2
                //                    }
            }
        }
    }
}

#Preview {
    ZStackViews()
}

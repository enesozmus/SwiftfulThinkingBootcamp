//
//  ButttonsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 9.05.2024.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20, content: {
            Text(title)
            
            // ...
            Button("Press me") {
                self.title = "Button was pressed"
            }
            .accentColor(.green)
            
            // ...
            Button(
                action: {
                    self.title = "Button 2# was pressed"
                },
                label: {
                    Text("Button")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 12)
                        .background(
                            Color.blue
                                .cornerRadius(10)
                                .shadow(radius: 10)
                        )
                }
            )
            
            // ...
            Button(
                action: {
                    self.title = "Button 3#"
                },
                label: {
                    Circle()
                        .fill(.white)
                        .frame(width: 55, height: 55)
                        .shadow(radius: 10)
                        .overlay {
                            Image(systemName: "heart.fill")
                                .font(.largeTitle)
                                .foregroundColor(.blue)
                        }
                }
            )
            
            // ...
            Button(
                action: {
                    self.title = "Button 4#"
                },
                label: {
                    Text("Finish")
                        .font(.caption)
                        .bold()
                        .foregroundColor(.gray)
                        .padding()
                        .padding(.horizontal, 12)
                        .background(
                            Capsule()
                                .stroke(.gray, lineWidth: 3.0)
                        )
                    
                }
            )
            
        })
    }
}

#Preview {
    ButtonsBootcamp()
}

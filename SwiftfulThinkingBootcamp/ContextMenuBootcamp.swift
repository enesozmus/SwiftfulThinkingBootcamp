//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 11.05.2024.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
    
    var body: some View {
        
        // ... 🟦
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Report post")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
        })
        
        // ... 🟦
        Text("Turtle Rock")
            .font(.largeTitle)
            .padding()
            .contextMenu {
                // hold down
                Button {
                    // Add this item to a list of favorites.
                } label: {
                    Label("Add to Favorites", systemImage: "heart")
                }
                Button {
                    // Open Maps and center it on this item.
                } label: {
                    Label("Show in Maps", systemImage: "mappin")
                }
            }
    }
}

#Preview {
    ContextMenuBootcamp()
}


/*
    🔴 Label
        → A standard label for user interface items, consisting of an icon with a title.

            Label("Lightning", systemImage: "bolt.fill")
            Label("Show in Maps", systemImage: "mappin")
            Label("Add to Favorites", systemImage: "heart")
 */

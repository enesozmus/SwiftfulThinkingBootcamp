//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 11.05.2024.
//

import SwiftUI

struct ListBootcamp: View {
    
    // ... ⬛️
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach", "tangerine"
    ]
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    // ... ⬛️
    var body: some View {
        NavigationStack {
            List {
                
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .font(.caption)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(.pink)
                    }
                    //                    .onDelete(perform: { indexSet in
                    //                        //fruits.remove(atOffsets: indexSet)
                    //                        🟢 excract the function logic from the view
                    //                        delete(indexSet: indexSet)
                    //                    })
                    .onDelete(perform: delete)
                    //                    .onMove(perform: { indices, newOffset in
                    //                        //fruits.move(fromOffsets: indices, toOffset: newOffset)
                    //                        move(indices: indices, newOffset: newOffset)
                    //                    })
                    .onMove(perform: move)
                    .listRowBackground(Color.black)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
                
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    addButton
                }
            }
        }
        .tint(.green)
    }
    
    // ... ⬛️
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}

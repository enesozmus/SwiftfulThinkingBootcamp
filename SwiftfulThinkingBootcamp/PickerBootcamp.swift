//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 12.05.2024.
//

import SwiftUI

struct PickerBootcamp: View {
    
    // ... ⬛️
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate, vanilla, strawberry
        var id: Self { self }
    }
    @State private var selectedFlavor: Flavor = .chocolate
    
    
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    @State private var selection: String = "Most Recent"
    
    @State var selectedNumber: Int = 0
    
    // ... ⬛️
    var body: some View {
        
        // ... 🟦
        //        Picker(
        //            selection: .constant(1)) {
        //                Text("1").tag(1)
        //                Text("2").tag(2)
        //                Text("3").tag(3)
        //            } label: {
        //                Text("Picker")
        //            }
        //            .pickerStyle(.palette)
        
        // ... 🟦
        //        VStack {
        //            HStack {
        //                Text("Age: ")
        //                Text(selection)
        //            }
        //            Picker(
        //                selection: $selection) {
        //                    Text("1").tag("1")
        //                    Text("2").tag("2")
        //                    Text("3").tag("3")
        //                } label: {
        //                    Text("Picker")
        //                }
        //        }
        
        // ... 🟦
        //        VStack {
        //            HStack {
        //                Text("Age: ")
        //                Text(selection)
        //            }
        //            Picker(
        //                selection: $selection) {
        //                    ForEach(18..<100) { number in
        //                        Text("\(number)")
        //                            .tag("\(number)")
        //                    }
        //                } label: {
        //                    Text("Picker")
        //                }
        //                .pickerStyle(.wheel)
        //        }
        
        // ... 🟦
        // 🟧 Label will only show in these picker styles, when picker is in a list    (inline-menu)
        //        List {
        //            Picker(
        //                selection: $selection) {
        //                    ForEach(filterOptions, id: \.self) { option in
        //                        Text(option)
        //                            .tag(option)
        //                    }
        //                } label: {
        //                    HStack {
        //                        Text("Filter:")
        //                        Text(selection)
        //                    }
        //                    .font(.headline)
        //                }
        //                .pickerStyle(.inline)
        //        }
        
        // ... 🟦
        //        Picker(
        //            selection: $selection,
        //            label: Text("Picker"),
        //            content: {
        //                ForEach(filterOptions.indices) { index in
        //                    Text(filterOptions[index])
        //                        .tag(filterOptions[index])
        //                }
        //            })
        //        .pickerStyle(SegmentedPickerStyle())
        
        // ... 🟦
        //        Menu {
        //            Picker(selection: $selectedNumber , label: EmptyView()) {
        //                ForEach(0..<18){index in
        //                    Text("\(index)")
        //                }
        //            }
        //        } label: {
        //            cosutomlabel
        //        }
        
        // ... 🟦
        List {
            Picker("Flavor", selection: $selectedFlavor) {
                Text("Chocolate")
                    .tag(Flavor.chocolate)
                Text("Vanilla")
                    .tag(Flavor.vanilla)
                Text("Strawberry")
                    .tag(Flavor.strawberry)
            }
            .pickerStyle(.inline)
        }
        
        // ... 🟦
        //        Picker("Flavor", selection: $selectedFlavor) {
        //            ForEach(Flavor.allCases) { flavor in
        //                Text(flavor.rawValue.capitalized)
        //            }
        //        }
    }
    
    // ... ⬛️
    var cosutomlabel: some View {
        HStack{
            Text("Choise: ")
            Text("\(selectedNumber)")
        }
        .foregroundColor(.white)
        .font(.title)
        .fontWeight(.bold)
        .padding()
        .background(.blue)
        .cornerRadius(10)
        .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 10)
    }
}



#Preview {
    PickerBootcamp()
}

/*
    🔴Picker
        → A control for selecting from a set of mutually exclusive values.
        → You create a picker by providing a selection binding, a label, and the content for the picker to display.


             enum Flavor: String, CaseIterable, Identifiable {
                 case chocolate, vanilla, strawberry
                 var id: Self { self }
             }
             @State private var selectedFlavor: Flavor = .chocolate

             List {
                 Picker("Flavor", selection: $selectedFlavor) {
                     Text("Chocolate").tag(Flavor.chocolate)
                     Text("Vanilla").tag(Flavor.vanilla)
                     Text("Strawberry").tag(Flavor.strawberry)
                 }
             }
             Picker("Flavor", selection: $selectedFlavor) {
                 ForEach(Flavor.allCases) { flavor in
                     Text(flavor.rawValue.capitalized)
                 }
             }

 __________________
         enum Topping: String, CaseIterable, Identifiable {
             case nuts, cookies, blueberries
             var id: Self { self }
         }


         extension Flavor {
             var suggestedTopping: Topping {
                 switch self {
                 case .chocolate: return .nuts
                 case .vanilla: return .cookies
                 case .strawberry: return .blueberries
                 }
             }
         }


         @State private var suggestedTopping: Topping = .nuts

         List {
             Picker("Flavor", selection: $suggestedTopping) {
                 ForEach(Flavor.allCases) { flavor in
                     Text(flavor.rawValue.capitalized)
                         .tag(flavor.suggestedTopping)
                 }
             }
             HStack {
                 Text("Suggested Topping")
                 Spacer()
                 Text(suggestedTopping.rawValue.capitalized)
                     .foregroundStyle(.secondary)
             }
         }

 .pickerStyle(.segmented)
 */

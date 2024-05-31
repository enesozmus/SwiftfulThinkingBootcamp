//
//  MultipleSheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 31.05.2024.
//

import SwiftUI

struct MultipleSheetModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
}

struct MultipleSheetsBootcamp: View {
    
    //@State var selectedModel: MultipleSheetModel = MultipleSheetModel(title: "Random Model")
    @State var selectedModel: MultipleSheetModel? = nil
    @State var showSheet: Bool = false
    
    @State var showSheet1: Bool = false
    @State var showSheet2: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            ForEach(0..<13) { index in
                Button {
                    selectedModel = MultipleSheetModel(title: "\(index)")
                } label: {
                    Text("Button")
                }
            }
            //            Button {
            //                selectedModel = MultipleSheetModel(title: "ONE")
            //                showSheet.toggle()
            //                //showSheet1.toggle()
            //            } label: {
            //                Text("Button")
            //            }
            //            .sheet(isPresented: $showSheet1, content: {
            //                NextScreen(selectedModel: selectedModel)
            //            })
            
            //            Button {
            //                selectedModel = MultipleSheetModel(title: "TWO")
            //                showSheet.toggle()
            //                //showSheet2.toggle()
            //            } label: {
            //                Text("Button 2")
            //            }
            //            .sheet(isPresented: $showSheet2, content: {
            //                NextScreen(selectedModel: selectedModel)
            //            })
        }
        //        .sheet(isPresented: $showSheet) {
        //            NextScreen(selectedModel: selectedModel)
        //            //NextScreen(selectedModel: $selectedModel)
        //        }
        .sheet(item: $selectedModel) { model in
            NextScreen(selectedModel: model)
        }
    }
}

struct NextScreen: View {
    
    let selectedModel: MultipleSheetModel
    //@Binding var selectedModel: MultipleSheetModel
    
    var body: some View {
        Text("NextScreen -> \(selectedModel.title)")
            .font(.headline)
    }
}

#Preview {
    MultipleSheetsBootcamp()
}

/*
 
    State var selectedModel: MultipleSheetModel = MultipleSheetModel(title: "Random Model")
    @State var showSheet: Bool = false
 
     VStack(spacing: 20){
             Button {
                 selectedModel = MultipleSheetModel(title: "ONE")
                 showSheet.toggle()
             } label: {
                 Text("Button")
             }

         
             Button {
                 selectedModel = MultipleSheetModel(title: "TWO")
                 showSheet.toggle()
             } label: {
                 Text("Button 2")
             }

     }
     .sheet(isPresented: $showSheet) {
         NextScreen(selectedModel: selectedModel)
     }

 struct NextScreen: View {
     
     let selectedModel: MultipleSheetModel
     //@Binding var selectedModel: MultipleSheetModel
     
     var body: some View {
         Text("NextScreen -> \(selectedModel.title)")
             .font(.headline)
     }
 }
 */

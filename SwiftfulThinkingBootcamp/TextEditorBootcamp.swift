//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 11.05.2024.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundStyle(.black.opacity(0.8))
                // 🟩 We cannot change the background color of 'TextEditor' directly, first we have to hide the default background using this code, then apply background.
                    .scrollContentBackground(.hidden)
                    .background(.yellow.opacity(0.45)) // To see this
                    .clipShape(.rect(cornerRadii: .init(topLeading: 10, bottomLeading: 10, bottomTrailing: 10, topTrailing: 10)))
                //.colorMultiply(Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)))
                
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(.rect(cornerRadii: .init(topLeading: 10, bottomLeading: 10, bottomTrailing: 10, topTrailing: 10)))
                })
                
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}

/*
    🔴 TextEditor
        → A view that can display and edit long-form text.
        → A text editor view allows you to display and edit multiline, scrollable text in your app’s user interface.

         @State private var fullText: String = "This is some editable text..."

                 TextEditor(text: $fullText)
                     .foregroundColor(Color.gray)
                     .font(.custom("HelveticaNeue", size: 13))
                     .lineSpacing(5)
 
                 TextEditor(text: $textEditorText)
                     .padding([.leading, .trailing], 1)
                     .overlay(
                         RoundedRectangle(cornerRadius: 10)
                             .stroke(Color(.systemGray5), lineWidth: 2.0)
                     )
 */

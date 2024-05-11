//
//  ConfirmationDialogBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 11.05.2024.
//

import SwiftUI

struct ConfirmationDialogBootcamp: View {
    
    @State private var backgroundColor: Color = .white
    @State private var showConfirmationDialog: Bool = false
    @State var confirmationDialogOption: ConfirmationDialogOptions = .isOtherPost
    
    enum ConfirmationDialogOptions {
        case isMyPost, isOtherPost
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            Button {
                showConfirmationDialog.toggle()
                confirmationDialogOption = .isOtherPost
            } label: {
                //Text("Click me")
                Image(systemName: "ellipsis")
                    .font(.largeTitle)
            }
            .padding(.horizontal)
            .tint(.primary)
            .confirmationDialog(
                "What would you like to do?",
                isPresented: $showConfirmationDialog,
                titleVisibility: .visible
            ) {
                Button("Red") { backgroundColor = .red }
                Button("Green") { backgroundColor = .green }
                Button("Yellow") { backgroundColor = .yellow }
                Button("Remove color", role: .destructive) { backgroundColor = .clear }
                Button("Cancel", role: .cancel) { }
                getButtons()
            } message: {
                Text("This is the message")
            }
        }
    }
    
    // ... ⬛️
    func getButtons() -> some View {
        return Group {
            Button("Change Profile") {}
            Button("Log Out", role: .destructive) {}
            isMyPost()
            //Button("Cancel", role: .cancel) {}
        }
    }
    
    func isMyPost() -> some View {
        switch confirmationDialogOption {
        case .isMyPost:
            return AnyView(
                Button("Any option", role: .destructive) {})
        case .isOtherPost:
            return AnyView(
                Button("Make pink") {
                    backgroundColor = .pink}
            )
        }
    }
}

#Preview {
    ConfirmationDialogBootcamp()
}

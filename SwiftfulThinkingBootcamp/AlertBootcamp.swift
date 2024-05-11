//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 11.05.2024.
//

import SwiftUI

struct AlertBootcamp: View {
    
    // ... ⬛️
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
    
    @State var alertType: MyAlerts? = nil
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    
    
    // ... ⬛️
    enum MyAlerts {
        case success
        case error
    }
    
    // ... ⬛️
    var body: some View {
        // ... 🟦
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Button("BUTTON 1") {
                    alertType = .error
                    //alertTitle = "ERROR UPLOADING VIDEO"
                    //alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("BUTTON 2") {
                    alertType = .success
                    //alertTitle = "Successfully uploaded video 🥳"
                    //alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
        
        
        // ... 🟦
        //        Button {
        //            showAlert.toggle()
        //        } label: {
        //            Text("Show Toast")
        //        }
        //        .alert(Text("Error"), isPresented: $showAlert) {
        //            Button(role: .cancel) {
        //                // ...
        //                // ...
        //            } label: {
        //                Text("Cancel")
        //            }
        //            Button(role: .destructive) {
        //                // ...
        //                // ...
        //            } label: {
        //                Text("Finish")
        //            }
        //        } message: {
        //            Text("Unable to find location")
        //        }
        
        // ... 🟦
        //        ZStack {
        //            backgroundColor
        //                .ignoresSafeArea()
        //
        //            VStack {
        //                Button("BUTTON 1") {
        //                    alertType = .error
        //                    showAlert.toggle()
        //                }
        //                Button("BUTTON 2") {
        //                    alertType = .success
        //                    showAlert.toggle()
        //                }
        //            }
        //            .alert(
        //                alertType == .success ? "Successfully Uploaded Video" : "Error Uploading Video",
        //                isPresented: $showAlert) {
        //                    Button(
        //                        "OK",
        //                        role: .cancel,
        //                        action: {}
        //                    )
        //                } message: {
        //                    Text(
        //                        alertType == .success ? "Your video is now public" : "The video could not be uploaded"
        //                    )
        //                }
        //        }
    }
    
    // ... ⬛️
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(
                title: Text("There was an error!")
            )
        case .success:
            return Alert(
                title: Text("This was a success!"),
                message: nil,
                dismissButton: .default(
                    Text("OK"),
                    action: { backgroundColor = .green }
                )
            )
        default:
            return Alert(title: Text("ERROR"))
        }
    }
    
}

#Preview {
    AlertBootcamp()
}

/*
 
    🔴
    Alert(
        title: Text("There was an error!")
    )
   
    🔴
    Alert(
        title: Text(alertTitle),
        message: Text(alertMessage),
        dismissButton: .default(Text("OK"))
    )
 
    🔴
    Alert(
         title: Text("This is the title"),
         message: Text("Here we will describe the error."),
         primaryButton: .destructive(Text("Delete"), action: {
             backgroundColor = .red
         }),
         secondaryButton: .cancel()
     )
 
 */

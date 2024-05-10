//
//  ConditionalLogicBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 10.05.2024.
//

import SwiftUI

struct ConditionalLogicBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    
    var body: some View {
        VStack(spacing: 12) {
            Button("Circle Button") {
                showCircle.toggle()
            }
            Button("Rectangle Button") {
                showRectangle.toggle()
            }
            //ProgressView()
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
                    .task { showRectangle = false }
            }
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 50)
                    .task { showCircle = false }
            }
            
            
            //if showCircle {
            //if showCircle == true {
            //if showCircle == fale {
            //if !showCircle {
            
            
            // →   &&    AND       exp1 && exp2
            // →   ||    OR        exp1  exp2
            // →   !     NOT       !exp1
            
            /*
                 if {
                 
                 } else if {
                 
                 } else {
                 
                 }
             */
        }
    }
}

#Preview {
    ConditionalLogicBootcamp()
}

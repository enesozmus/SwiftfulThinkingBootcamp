//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 12.05.2024.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change status")
                }
            )
            //.toggleStyle(.switch)
            //.toggleStyle(.button)
            .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1))))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}

/*
    🔴 Toggle
        → A control that toggles between "on" and "off" states.
        → You create a toggle by providing an "isOn" binding and "a label".
        → Bind isOn to a Boolean property that determines whether the toggle is on or off.

             @State private var vibrateOnRing = false
 
             Toggle(
                 "Vibrate on Ring",
                 systemImage: "dot.radiowaves.left.and.right",
                 isOn: $vibrateOnRing
             )

             .toggleStyle(.switch)
             .toggleStyle(.button)
 */

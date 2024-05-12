//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 12.05.2024.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    // ... ⬛️
    @State private var selectedTab: Int = 0
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    // ... ⬛️
    var body: some View {
        
        // ... 🟦
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
        // ... 🟦
        //        TabView(selection: $selectedTab) {
        //            HomeView(selectedTab: $selectedTab)
        //                .tabItem {
        //                    Image(systemName: "house.fill")
        //                    Text("Home")
        //                }
        //                .tag(0)
        //            Text("PROFILE TAB")
        //                .tabItem {
        //                    Image(systemName: "person.fill")
        //                    Text("Profile")
        //                }
        //                .tag(1)
        //        }
        //        .onAppear() {
        //            UITabBar.appearance().backgroundColor = .white
        //        }
        //        .tint(.pink)
        
        // ... 🟦
        //        TabView() {
        //            ReceivedView()
        //                .badge(2)
        //                .tabItem {
        //                    Label("Received", systemImage: "tray.and.arrow.down.fill")
        //                }
        //            SentView()
        //                .tabItem {
        //                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
        //                }
        //            AccountView()
        //                .badge("!")
        //                .tabItem {
        //                    Label("Account", systemImage: "person.crop.circle.fill")
        //                }
        //            Text("HOME TAB")
        //                .tabItem {
        //                    Image(systemName: "house.fill")
        //                    Text("Home")
        //                }
        //        }
        //        .tint(.green)
    }
}

// ... ⬛️
struct ReceivedView: View {
    var body: some View {
        Text("ReceivedView")
    }
}
struct SentView: View {
    var body: some View {
        Text("SentView")
    }
}
struct AccountView: View {
    var body: some View {
        Text("AccountView")
    }
}
struct HomeView: View {
    
    @Binding var selectedTab: Int
        
    var body: some View {
        ZStack {
            Color.pink
                .ignoresSafeArea()
            
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(action: {
                    selectedTab = 1
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    
                })
            }
        }
    }
}

#Preview {
    TabViewBootcamp()
}

/*
    🔴 TabView
        → A view that switches between multiple child views using interactive user interface elements.
        → To create a user interface with tabs, place views in a TabView and apply the tabItem(_:) modifier to the contents of each tab.
        → On iOS, you can also use one of the badge modifiers, like badge(_:), to assign a badge to each of the tabs.

         TabView {
             ReceivedView()
                 .badge(2)
                 .tabItem {
                     Label("Received", systemImage: "tray.and.arrow.down.fill")
                 }
             SentView()
                 .tabItem {
                     Label("Sent", systemImage: "tray.and.arrow.up.fill")
                 }
             AccountView()
                 .badge("!")
                 .tabItem {
                     Label("Account", systemImage: "person.crop.circle.fill")
                 }
         }
 */

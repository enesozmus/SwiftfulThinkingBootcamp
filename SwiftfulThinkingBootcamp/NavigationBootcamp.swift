//
//  NavigationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 11.05.2024.
//

import SwiftUI

struct NavigationBootcamp: View {
    
    @State private var showDetails = false
    @State var path: [String] = ["1", "2", "3"]
    @State var paths = NavigationPath(["1", "2"])
    
    var body: some View {
        NavigationStack {
            ScrollView {
                NavigationLink("This is screen number 1") {
                    Text("Go to screen 1")
                }
                Spacer().frame(height: 10)
                NavigationLink("This is screen number 2") {
                    Text("Go to screen 2")
                }
            }
            .navigationTitle("Screens")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "person.fill")
                    }
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "gear")
                    }
                }
            }
        }
        
        //        NavigationStack {
        //            List {
        //                NavigationLink("Mint", value: Color.mint)
        //                NavigationLink("Pink", value: Color.pink)
        //                NavigationLink("Teal", value: Color.teal)
        //            }
        //            .navigationDestination(for: Color.self) { color in
        //                ColorDetail(color: color)
        //            }
        //            .navigationTitle("Colors")
        //        }
        
        //        NavigationStack {
        //            VStack {
        //                Button("Update detail") {
        //                    showDetails = true
        //                }
        //            }
        //            .navigationDestination(isPresented: $showDetails) {
        //                VStack {
        //                    Text("Deails was updated")
        //                    Button("close") {
        //                        showDetails = false
        //                    }
        //                }
        //            }
        //        }
        
        //        NavigationStack(path: $path) {
        //            VStack {
        //                NavigationLink("Go to screen 4", value: "4")
        //            }
        //            .navigationDestination(for: String.self) { value in
        //                Text("This is screen number \(value)")
        //            }
        //        }
        
        //        NavigationStack(path: $paths) {
        //            VStack {
        //                NavigationLink("Go to int screen", value: 1)
        //                Spacer().frame(height: 10)
        //                NavigationLink("Go to person screen", value: PersonModel(name: "Mark", age: 32))
        //
        //            }
        //            .navigationDestination(for: String.self) { value in
        //                Text("This is a string screen with value: \(value)")
        //            }
        //            .navigationDestination(for: Int.self) { value in
        //                Text("This is a int screen with value: \(value)")
        //            }
        //            .navigationDestination(for: PersonModel.self) { value in
        //                Text("This is a int Person with,\nName: \(value.name), Age: \(value.age)")
        //            }
        //        }
        
    }
}

struct ColorDetail: View {
    var color: Color
    
    var body: some View {
        color.navigationTitle(color.description)
    }
}

struct PersonModel: Hashable {
    let name: String
    let age: Int
}

#Preview {
    NavigationBootcamp()
}

/*
    https://developer.apple.com/documentation/swiftui/navigation
    https://developer.apple.com/documentation/swiftui/navigationstack
    https://medium.com/@fsamuelsmartins/how-to-use-the-swiftuis-navigationstack-79f32ada7c69

    🔴 Navigation
        → Navigation in SwiftUI is a powerful tool for creating complex and dynamic user interfaces.
        → Whether you’re building a simple prototype or a full-fledged application, SwiftUI’s navigation tools can help you create the perfect user experience.
        → Navigation was done using NavigationView, but it was deprecated in iOS 16 and was split into two new containers, NavigationStack and NavigationSplitView, and each one of them has new features.
        → Enable people to move between different parts of your app’s view hierarchy within a scene.
        → Use navigation containers to provide structure to your app’s user interface, enabling people to easily move among the parts of your app.
 
    🔴 NavigationStack
        → A view that displays a root view and enables you to present additional views over the root view.
        → NavigationStack is used to set the view in a succeeding navigation, stacking the new view over the previous one, always having one view on top.
        → The stack always displays the most recently added view that hasn’t been removed, and doesn’t allow the root view to be removed.

        → Use a NavigationStack to present a stack of views over a root view.
        → Add views to the top of the stack by clicking or tapping a NavigationLink
        → Remove views using built-in, platform-appropriate controls, like a Back button or a swipe gesture.
        → To create navigation links, associate a view with a data type by adding a navigationDestination(for:destination:) modifier inside the stack’s view hierarchy.
 
            🟩
            NavigationStack {
                 List(parks) { park in
                     NavigationLink(park.name, value: park)
                 }
                 .navigationDestination(for: Park.self) { park in
                     ParkDetails(park: park)
                 }
             }
            🟩
            NavigationStack {
                VStack {
                    NavigationLink("This is screen number 1") {
                        Text("Go to screen 1")
                    }
                    Spacer().frame(height: 10)
                    NavigationLink("This is screen number 2") {
                        Text("Go to screen 2")
                    }
                }
            }
 
    🔴 navigationDestination(for:destination:)
        → The new navigation system made the code cleaner because now is possible to define the destination apart from NavigationLink creation.
        → To define the destination, you need to add to the father view of the NavigationLink, the function navigationDestination(), that has the following parameters:

        → Associates a destination view with a presented data type for use within a navigation stack.
        → Add this view modifer to a view inside a NavigationStack to describe the view that the stack displays when presenting a particular kind of data.
        → Use a NavigationLink to present the data.

            Parameters:
                -> Data: The type of data that this destination matches. This parameter only accepts values that implement the Hashable protocol.
                -> Destination: A view builder that defines a view to display when the stack’s navigation state contains a value of type data. The closure takes one argument, which is the value of the data to present.
            🟩
            NavigationStack {
                List {
                     NavigationLink("Mint", value: Color.mint)
                     NavigationLink("Pink", value: Color.pink)
                     NavigationLink("Teal", value: Color.teal)
                }
                .navigationDestination(for: Color.self) { color in
                    ColorDetail(color: color)
                }
                .navigationTitle("Colors")
            }
            🟩
            NavigationStack {
                VStack {
                    NavigationLink("Go to screen 1", value: "1")
                    Spacer().frame(height: 10)
                    NavigationLink("Go to screen 2", value: "2")
                }
                .navigationDestination(for: String.self) { value in
                    Text("This is screen number \(value)")
                }
            }
 
    🔴 NavigationDestination for a boolean state variable
        → Another way of implementing the navigation destination is observing a boolean state variable, so, every time the observable state is changed, the destination will be triggered.
 
            Parameters:
                -> isPresented: A binding to a Boolean value that indicates whether destination is currently presented.
                -> destination: A view to present.
 
            struct ContentView: View {
                @State private var showDetails = false

                var body: some View {
                    NavigationStack {
                        VStack {
                            Button("Update detail") {
                                showDetails = true
                            }
                        }
                        .navigationDestination(isPresented: $showDetails) {
                            VStack {
                                Text("Deails was updated")
                                Button("close") {
                                    showDetails = false
                                }
                            }
                        }
                    }
                }
            }
 
    🔴 NavigationStack path parameter
        → This new parameter is one of the best new features that came in iOS 16, this allows an easier implementation of deeplinks and other specific cases of navigation.
        → Basically, this parameter allows us to define a predefined route to the new destination, and to track all stacked screens in the path.
        → Each item in this list corresponds to a screen that will be open when the program starts.
    
            struct ContentView: View {

                @State var path: [String] = ["1", "2", "3"]

                var body: some View {
                    NavigationStack(path: $path) {
                        VStack {
                            NavigationLink("Go to screen 4", value: "4")
                        }.navigationDestination(for: String.self) { value in
                            Text("This is screen number \(value)")
                        }
                    }
                }
            }
 
    🔴 NavigationPath
        → In the previous topic, a list of Strings was created to be the path variable of NavigationStack, but what should be done if one new screen needs to receive other type as its parameter, and we still want to track all the navigation?
        → Apple has created a type-erased list of data to resolve this problem, this list is called NavigationPath.
        → For a better example of how to use the NavigationPath, we will create a person model, and like the value parameter of the NavigationLink, every type that will be added to the path list needs to implement the Hashable protocol.
 
            struct PersonModel: Hashable {
                let name: String
                let age: Int
            }
 
        → Then, we create a NavigationPath with two starting paths with the type String.
        → After that, the new path is set at the NavigationStack's path parameter, and now to test the type flexibility of the NavigationPath, we're going to make two new NavigationsLinks with different types.
        → The first link has an integer as in it value parameter, and the second one uses the created person model as the value. After adding the different types of value, we need to define the specific destination for them.
 
            struct ContentView: View {

                @State var path = NavigationPath(["1", "2"])

                var body: some View {
                    NavigationStack(path: $path) {
                        VStack {
                            NavigationLink("Go to int screen", value: 1)
                            Spacer().frame(height: 10)
                            NavigationLink("Go to person screen", value: PersonModel(name: "Mark", age: 32))

                        }
                        .navigationDestination(for: String.self) { value in
                            Text("This is a string screen with value: \(value)")
                        }
                        .navigationDestination(for: Int.self) { value in
                            Text("This is a int screen with value: \(value)")
                        }
                        .navigationDestination(for: PersonModel.self) { value in
                            Text("This is a int Person with,\nName: \(value.name), Age: \(value.age)")
                        }
                    }
                }
            }
 
    🔴 NavigationSplitView
        → NavigationSplitView, is used when you need to make a column base navigation. So, the screen will be divided into columns, where each column is one subview of NavigationSplitView.
 */

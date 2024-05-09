//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 10.05.2024.
//

import SwiftUI

struct BindingBootcamp: View {
    
    // → ✅ @Binding
    // → It's a property wrapper type that can read and write a value owned by a source of truth.
    // → The @Binding property wrapper is designed to let us read and write some external piece of data – something that was created elsewhere, such as an @State property from a parent view.
    // → @Binding lets us declare that one value actually comes from elsewhere, and should be shared in both places.
    //  → → @Binding wrapper'ı ile ilgili view'lar arasında (main-sub/parent-child) @State'ler üzerinden kendi bağlantılarınızı oluşturabilir ve veri paylaşımı gerçekleştirebilirsiniz.
    //  → → İlgili view’ın instanse'ı oluşturulduğunda bir bağlantının iletilmesi gerekliliğini belirtir.
    
    // 🟢
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            // 🟢
            ButtonView(backgroundColor: $backgroundColor)
        }
    }
}

struct ButtonView: View {
    
    // 🟢
    // → We use a binding property wrapper to connect a state property wrapper from the parent view to a subview.
    // → To enable the subview to modify the state’s stored value, pass a @Binding instead.
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            makeBlack()
        }, label: {
            Text("Make black")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(.black)
                .cornerRadius(10.0)
        })
    }
    
    // 🟢
    func makeBlack() {
        self.backgroundColor = .black
    }
}

#Preview {
    BindingBootcamp()
}

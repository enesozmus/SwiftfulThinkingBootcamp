//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 9.05.2024.
//

import SwiftUI

struct StateBootcamp: View {
    
    // → Bir SwiftUI uygulamasında, değişebilen her bir veri değeri veya nesne, bir doğruluk kaynağına ve view'ların ilgili veriyi gözlemleyebilmesini ve değiştirebilmesini sağlayan bir mekanizmaya ihtiyaç duyar.
    // → SwiftUI, kodumuzu okumayı, yazmayı ve korumayı kolaylaştırmak için büyük ölçüde özellik sarmalayıcı olarak Türkçe’ye çevirebileceğimiz Property Wrapper'lara güvenir.
    // → SwiftUI ile birlikte aktif olarak kullanılan bu wrapper'lar bizlere yeni yetenek kazandırma amacı taşıyan oldukça okunaklı ve etkileşimli yapılar oluşturmamızı sağlıyor.
    
    // → ✅ @State
    // → It is a property wrapper type that can read and write a value managed by SwiftUI.
    // → → You can use @State wrapper as the single source of truth for a given value type that you store in a view hierarchy.
    // → → You can create a state value in an App, Scene, or View by applying the @State attribute to a property declaration and providing an initial value.
    
    // → → → @State: Sadece tanımlandığı “View” nesnesi içinde kullanılan ön ektir. Değeri değiştiğinde, değerin bağlı olduğu “View” nesnelerini günceller.
    // → → → @State, "string, int ve array" gibi basic struct türleriyle kullanılmalı ve genellikle diğer view’larla paylaşılmamalıdır.(private)
    
    
    // ✅ When we add 'var' the system knows this can change and that's fine in Swift but in SwiftUI we also need to make sure that the view knows that this will change so to do that we use a propert wrapper that's called  @state
    //let backgroundColor: Color = Color.green
    //var backgroundColor: Color = Color.green
    @State var backgroundColor: Color = Color.green
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            //Color.red
            backgroundColor
                .ignoresSafeArea()
            VStack(spacing: 18) {
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                HStack(spacing: 22) {
                    Button("BUTTON RED") {
                        self.backgroundColor = .red
                        self.count += 1
                    }
                    Button("BUTTON BLACK") {
                        self.backgroundColor = .black
                        self.count += 1
                    }
                    Button("BUTTON GREEN") {
                        self.backgroundColor = .green
                        self.count += 1
                    }
                    Button("RESET COUNT ") {
                        self.count = 0
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}

//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 14.05.2024.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    // ... ⬛️
    // MARK: PROPERTIES
    //@State private var displayText: String = ""
    // ❌ @State private var displayText: String = nil
    @State private var displayText: String? = nil
    @State private var currentUserID: String? = nil
    //@State private var currentUserID: String? = "Aaa123"
    @State private var isLoading: Bool = false
    
    // ... ⬛️
    // MARK: BODY
    var body: some View {
        NavigationStack {
            VStack {
                Text("Here we are practicing safe coding!")
                    .font(.callout)
                Spacer()
                
                // ⚠️ Value of optional type 'String?' must be unwrapped to a value of type 'String'
                //Text(displayText)
                //.font(.title)
                if let newText = displayText {
                    Text(newText)
                    
                }
                
                // DO NOT USER ! EVER!!!!!!!
                // DO NOT FORCE UNWRAP VALUES
                // Text(displayText!)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                //loadData()
                loadData2()
            }
        }
    }
    
    // ... ⬛️
    // MARK: FUNCTIONS
    
    // if-let
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is : \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error ⚠️ There is no User ID"
        }
    }
    
    // guard
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error ⚠️ There is no User ID"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is : \(userID)"
            isLoading = false
        }
    }
    
}

#Preview {
    IfLetGuardBootcamp()
}

/*
    🔴 guard statement
        → In Swift, a guard statement is used to transfer program control out of a scope if one or more conditions aren’t met.
        → Here, %condition% returns either true or false.
        → If the %condition% evaluates to...

    true - statements inside the code block of guard are not executed
    false - statements inside the code block of guard are executed

         guard %condition% else {
            %statements%
            // control statement: return, break, continue or throw.
         }

    // ◻️ width ve height pozitif ise bana bakma yoluna devam et
    // ◻️ değilse benim bloklarımın içinden devam et
         func calculateArea(width: Double, height: Double) -> Double? {
             guard width > 0, height > 0 else {
                 print("Invalid dimensions")
                 return nil
             }

             return width * height
         }

    // ◻️  Çökme ve yanlış verileri engellemek amacıyla bir ifadenin kontrolünü ve ifadeden erken çıkış imkanı sağlar.
    // 🔻 Guard kullanımında mutlaka else ifadesi kullanılmalıdır. Koşul sağlanmadığında else ifadesindeki kodlar çalıştırılır.
 */

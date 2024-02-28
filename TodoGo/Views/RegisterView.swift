//
//  RegisterView.swift
//  TodoGo
//
//  Created by 김성민 on 2/27/24.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        
        @State var name = ""
        @State var password = ""
        @State var email = ""
        
        VStack {
            //Header
            HeaderView(title: "Register",
                       subtitle: "Start Organizing Todos",
                       angle: -15,
                       background: .orange)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()

                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())

                TLButton(title:"Create Account",
                         background: Color.orange) {
                    // action: () -> {}랑 똑같음
                    
                    // Attempt Registration
                }.padding()

            }
            .offset(y:-50)
            
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}

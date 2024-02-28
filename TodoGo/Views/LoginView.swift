//
//  LoginView.swift
//  TodoGo
//
//  Created by 김성민 on 2/27/24.
//

import SwiftUI

struct LoginView: View {

    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                 //Header
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, background: .blue)

                if viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(.red)
                }
                 // Login Form
                 Form {
                     TextField("Address", text: $viewModel.email)
                         .textFieldStyle(DefaultTextFieldStyle())
                         .autocorrectionDisabled()

                     TextField("Password", text:$viewModel.password)
                         .textFieldStyle(DefaultTextFieldStyle())

                     TLButton(title:"Login",
                              background: Color.blue) {
                         // action: () -> {}랑 똑같음
                         
                         // Attempt Login
                         viewModel.login()
                     }.padding()
                     
                } //end of Form
                 .offset(y:-50)
                
                // Create Account
                VStack {
                        Text("New Around Here")
                    NavigationLink("Create An Account",
                                   destination: RegisterView() )
                }
                .padding(.bottom, 50)
                
                
                Spacer()
            } //end of VStack

        } //end of NavigationView
        
    }// end of body
} //end of struct LoginView

#Preview {
    LoginView()
}

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
                
                 // Login Form
                 Form {
                     if !viewModel.errorMessage.isEmpty {
                         Text(viewModel.errorMessage)
                             .foregroundStyle(.red)
                     }
                     
                     TextField("Address", text: $viewModel.email)
                         .textFieldStyle(DefaultTextFieldStyle())
                         .autocorrectionDisabled()

                     SecureField("Password", text:$viewModel.password)
                         .textFieldStyle(DefaultTextFieldStyle())

                     TLButton(title: "Login", background: Color.blue) {
                         // 로그인 버튼 클릭 시 viewModel의 login() 함수 호출
                         viewModel.login()
                     }
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

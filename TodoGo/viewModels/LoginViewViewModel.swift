//
//  LoginViewViewModel.swift
//  TodoGo
//
//  Created by 김성민 on 2/27/24.
//

import Foundation


class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    init() {}
    
    func login() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        
        print("Called")
    }
    
    func validate() {
        
    }
}

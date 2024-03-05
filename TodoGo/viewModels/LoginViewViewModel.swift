//
//  LoginViewViewModel.swift
//  TodoGo
//
//  Created by 김성민 on 2/27/24.
//
import Foundation

class LoginViewViewModel: ObservableObject {
    // ObservableObject 는 게시자와 구독자 관계에서 게시자.
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    // Published 는 래퍼 프로퍼티 값이 변경될 때마다 모든 구독자에게 업데이트를 알림.
    
    init() {}
    
    func login() {
        
        // empty check
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            // guard 의 조건이 false 라면 안의 코드 실행. so
            // 이메일, 비번 칸이 빈 상태에서 login 버튼 누르면 아래 코드 실행하면서 return
            errorMessage = "please fill in all fields"
            
            return
        }
        
        // email check
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter vaild email"
            return
        }
        
        
        print("Called")
    }
    
    func validate() {
        
    }
}

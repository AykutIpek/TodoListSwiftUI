//
//  LoginViewViewModel.swift
//  TodoListSwiftUI
//
//  Created by aykut ipek on 27.06.2023.
//

import Foundation
import SwiftUI
import FirebaseAuth

final class LoginViewViewModel: ObservableObject{
    //MARK: - Properties
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage = ""
    
    //MARK: - LifeCycle
    init() {
        
    }
    
    
}

//MARK: - Functions
extension LoginViewViewModel{
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else{
            errorMessage = "Please enter valid email"
            return false
        }
        
        return true
    }
}

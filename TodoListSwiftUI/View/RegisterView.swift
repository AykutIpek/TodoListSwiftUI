//
//  RegisterView.swift
//  TodoListSwiftUI
//
//  Created by aykut ipek on 27.06.2023.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel: RegisterViewViewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            HeaderView(title: "Register", subTitle: "Start organizing todos", angle: -15, background: .orange)
            Form{
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.none)
                TextField("Email Address", text: $viewModel.email).textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $viewModel.password).textFieldStyle(DefaultTextFieldStyle())
                TLButton(title: "Create Account", background: .green, action: {
                    viewModel.regiser()
                })
            }.offset(y: -100)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

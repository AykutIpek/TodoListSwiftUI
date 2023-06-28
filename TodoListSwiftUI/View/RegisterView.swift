//
//  RegisterView.swift
//  TodoListSwiftUI
//
//  Created by aykut ipek on 27.06.2023.
//

import SwiftUI

struct RegisterView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack{
            HeaderView(title: "Register", subTitle: "Start organizing todos", angle: -15, background: .orange)
            Form{
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.none)
                TextField("Email Address", text: $email).textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $password).textFieldStyle(DefaultTextFieldStyle())
                TLButton(title: "Create Account", background: .green, action: {
                    //
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

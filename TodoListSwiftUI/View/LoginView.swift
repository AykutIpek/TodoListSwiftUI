//
//  LoginView.swift
//  TodoListSwiftUI
//
//  Created by aykut ipek on 27.06.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationView {
            VStack {
                HeaderView()
                Form {
                    TextField("Email Adress", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    Button {
                        // Attemp Log in
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            Text("Log in")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }

                }
                VStack{
                    Text("New around here?")
                    NavigationLink("Create an account", destination: RegisterView())
                }.padding(.bottom, 20)
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

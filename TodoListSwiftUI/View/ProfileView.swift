//
//  ProfileView.swift
//  TodoListSwiftUI
//
//  Created by aykut ipek on 27.06.2023.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel: ProfileViewViewModel = ProfileViewViewModel()
    var body: some View {
        NavigationView {
            VStack{
                if let user = viewModel.user {
                    profile(user: user)
                }else{
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    @ViewBuilder
    func profile(user: User) -> some View {
        
        // Avatar
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .frame(width: 125, height: 125)
            .padding()
        
        // Info: Name, Email, Member since
        VStack(alignment: .leading){
            HStack{
                Text("Name: ")
                
                Text(user.name)
            }.padding()
            HStack{
                Text("Email: ")
                
                Text(user.email)
            }.padding()
            HStack{
                Text("Member Since: ")
                
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }.padding()
        }
        .padding()
        //Sign Out
        Button("Log Out"){
            viewModel.logOut()
        }
        .tint(.red)
        .padding()
        
        Spacer()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


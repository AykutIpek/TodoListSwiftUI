//
//  ContentView.swift
//  TodoListSwiftUI
//
//  Created by aykut ipek on 27.06.2023.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            accountView
        }else{
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView{
            TodoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
            }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

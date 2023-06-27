//
//  TodoListSwiftUIApp.swift
//  TodoListSwiftUI
//
//  Created by aykut ipek on 27.06.2023.
//

import SwiftUI
import FirebaseCore

@main
struct TodoListSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

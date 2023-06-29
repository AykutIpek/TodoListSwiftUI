//
//  TodoListViewViewModel.swift
//  TodoListSwiftUI
//
//  Created by aykut ipek on 27.06.2023.
//

import Foundation
import FirebaseFirestore


final class TodoListViewViewModel: ObservableObject{
    //MARK: - Properties
    @Published var showingNewItemView = false
    private let userId: String
    
    //MARK: - Lifecycle
    init(userID: String) {
        self.userId = userID
    }
}

//MARK: - Functions
/// Delete todolist item
extension TodoListViewViewModel{
    func  delete(id: String) {
        Firestore.firestore().collection("users").document(userId).collection("todos").document(id).delete()
    }
}

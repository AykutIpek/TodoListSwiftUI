//
//  TodoListItemsViewViewModel.swift
//  TodoListSwiftUI
//
//  Created by aykut ipek on 27.06.2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore


/// Viewmodel for single to do list item view (each row in elements)

final class TodoListItemsViewViewModel: ObservableObject{
    init() {}
    
    func toggleIsDone(item: TodoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else{
            return
        }
        
        Firestore.firestore().collection("users").document(uid).collection("todos").document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}

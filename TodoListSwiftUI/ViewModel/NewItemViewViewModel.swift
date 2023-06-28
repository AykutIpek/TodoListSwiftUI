//
//  NewItemViewViewModel.swift
//  TodoListSwiftUI
//
//  Created by aykut ipek on 27.06.2023.
//

import Foundation

final class NewItemViewViewModel: ObservableObject{
    //MARK: - Properties
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    init() {}
    
    func save(){
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else{
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}

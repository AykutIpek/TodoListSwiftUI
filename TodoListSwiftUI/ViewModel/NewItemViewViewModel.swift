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
    init() {}
    
    func save(){
        
    }
}

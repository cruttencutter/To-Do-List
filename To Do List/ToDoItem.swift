//
//  ToDoItem.swift
//  To Do List
//
//  Created by Claire Ruttencutter on 5/14/23.
//

import Foundation

class ToDo : Identifiable {
    var title : String
    var isImportant : Bool
    var id = UUID()
    
    init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}

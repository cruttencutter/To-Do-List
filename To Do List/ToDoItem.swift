//
//  ToDoItem.swift
//  To Do List
//
//  Created by Claire Ruttencutter on 5/14/23.
//

import Foundation

class ToDo {
    var title : String
    var isImportant : Bool
    
    init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}

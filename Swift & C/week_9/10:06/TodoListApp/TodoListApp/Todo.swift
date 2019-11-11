//
//  Todo.swift
//  TodoListApp
//
//  Created by Rodney Sampson on 10/6/16.
//  Copyright © 2016 com.rsampdev. All rights reserved.
//

import Foundation

class Todo {
    var name: String
    var details: String
    var dueDate: Date
    var isDone: Bool
    
    init(name: String, details: String, dueDate: Date) {
        self.name = name
        self.details = details
        self.dueDate = dueDate
        self.isDone = false
    }
}

extension Todo: Equatable {

    public static func ==(rhs: Todo, lhs: Todo) -> Bool {
        return rhs.name == lhs.name
    }
    
}

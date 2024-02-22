//
//  TodoModel.swift
//  SimpleTodo
//
//  Created by Allan on 2/22/24.
//
import Foundation

struct TodoModel: Identifiable{
    let id = UUID()
    var task: String
}

var tasks = [
    TodoModel(task: "Register for swimming class"),
    TodoModel(task: "Grocery Shopping")
]

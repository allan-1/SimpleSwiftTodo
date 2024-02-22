//
//  TaskDetailView.swift
//  SimpleTodo
//
//  Created by Allan on 2/22/24.
//

import SwiftUI

struct TaskDetailView: View {
    var task: TodoModel
    @Binding var todoList: [TodoModel]
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Text(task.task)
            .navigationTitle("Task")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: deleteButton)
    }
    
    var deleteButton: some View{
        Button(action: deleteTodo){
            Image(systemName: "xmark.bin.fill")
        }
    }
    
    func deleteTodo(){
        if let index = todoList.firstIndex(where: {$0.id == task.id}){
            todoList.remove(at: index) // Corrected from tasks.remove(at: index)
        }
        dismiss()
    }
}


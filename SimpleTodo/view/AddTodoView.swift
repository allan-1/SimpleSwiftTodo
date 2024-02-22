//
//  AddTodoView.swift
//  SimpleTodo
//
//  Created by Allan on 2/22/24.
//

import SwiftUI

struct AddTodoView: View {
    @Binding var tasks: [TodoModel]
    @State private var todoTextState: String = ""
    @FocusState private var todoFocusState
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            TextField("Enter your tasks", text: $todoTextState)
                .focused($todoFocusState)
                .onSubmit {
                    addTask()
                    dismiss()
                }
            .disableAutocorrection(true)
            Button(action: addTask){
                Text("Add")
            }
        }.padding()
        .navigationTitle("Add Todo")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func addTask(){
        tasks.append(TodoModel(task: todoTextState))
        todoTextState = ""
        dismiss()
    }
}

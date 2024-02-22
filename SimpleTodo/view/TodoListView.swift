//
//  TodoListView.swift
//  SimpleTodo
//
//  Created by Allan on 2/22/24.
//

import SwiftUI

struct TodoListView: View {
    @Binding var tasks: [TodoModel]
    var body: some View {
        List{
            ForEach(tasks){
                task in NavigationLink(destination: TaskDetailView(task: task, todoList: $tasks))
                {Text(task.task)}
            }
        }
    }
}

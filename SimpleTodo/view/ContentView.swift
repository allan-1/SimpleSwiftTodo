//
//  ContentView.swift
//  SimpleTodo
//
//  Created by Allan on 2/22/24.
//

import SwiftUI

struct ContentView: View {
    @State var tasklist:[TodoModel] = []

    var body: some View {
        NavigationStack {
            if !tasklist.isEmpty{
                TodoListView(tasks: $tasklist)
                    .navigationTitle("Todo")
                    .navigationBarItems(trailing: addButton)
            }else{
                Text("Add a task")
                    .navigationTitle("Todo")
                    .navigationBarItems(trailing: addButton)
            }
        }
    }
    
    var addButton: some View {
        NavigationLink(destination: AddTodoView(tasks: $tasklist)) {
            Image(systemName: "plus")
        }
    }
}

#Preview {
    ContentView()
}

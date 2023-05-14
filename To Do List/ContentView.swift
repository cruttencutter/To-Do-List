//
//  ContentView.swift
//  To Do List
//
//  Created by Claire Ruttencutter on 5/14/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDo] = []
    @State private var showNewTask = false
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                
                Spacer()
                
                Button(action: {
                    self.showNewTask = true
                }) {
                    Text("+")
                        .font(.system(size: 40))
                }
                
            }.padding()
            
            Spacer()
            
            List {
                ForEach(toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("!!" + toDoItem.title)
                    } else {
                        Text(toDoItem.title)
                    }
                }
            }.listStyle(.plain)
        }
        
        if showNewTask {
            NewToDoView(toDoItems: $toDoItems,showNewTask: $showNewTask, title:"", isImportant: false)
                .transition(AnyTransition.opacity.animation(.easeInOut(duration: 1.0)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

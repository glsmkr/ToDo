//
//  ContentView.swift
//  ToDo
//
//  Created by Julian A. Fordyce on 6/16/19.
//  Copyright © 2019 Glas Labs. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var todo = ""
    @State var todos: [String] = []
    
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Group {
                            TextField($todo, placeholder: Text("Enter a todo: ")).padding(12)
                            }.background(Color.white).clipShape(RoundedRectangle(cornerRadius: 5))
                            .shadow(radius: 4)
                            .padding(8)
                        
                        }
                        
                    }
                
                List (todos.identified(by: \.self)) {
                    Text($0)
                }
            }.navigationBarItems(trailing: Button(action: {
                if !self.todo.isEmpty {
                self.todos.append(self.todo)
                }
                self.todo = ""
            }, label: {
                Text("Save").color(.blue)
            }))
        }
    }
}
#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

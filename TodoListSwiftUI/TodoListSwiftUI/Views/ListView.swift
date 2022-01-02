//
//  ListView.swift
//  TodoListSwiftUI
//
//  Created by Ahmed Amin on 02/01/2022.
//

import SwiftUI

struct ListView: View {
   
    @State private var items: [ItemModel] =
    [
       ItemModel(title:  "This is the first item", isCompleted: false),
       ItemModel(title: "This is the second item", isCompleted: true),
       ItemModel(title: "this is the third item", isCompleted: false)
    ]
    
    var body: some View {
        
        List {
            ForEach(items) { item in
                ListRowView(item: item)
                
            }
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}



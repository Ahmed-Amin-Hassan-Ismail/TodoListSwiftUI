//
//  ListView.swift
//  TodoListSwiftUI
//
//  Created by Ahmed Amin on 02/01/2022.
//

import SwiftUI

struct ListView: View {
   
    @State private var items: [String] =
    [
        "This is the first item",
        "This is the second item",
        "this is the third item"
    ]
    
    var body: some View {
        
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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



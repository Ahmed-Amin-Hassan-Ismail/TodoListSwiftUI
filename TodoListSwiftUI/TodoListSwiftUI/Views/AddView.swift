//
//  AddView.swift
//  TodoListSwiftUI
//
//  Created by Ahmed Amin on 02/01/2022.
//

import SwiftUI

struct AddView: View {
    
    @State private var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .frame(minWidth: 0, idealWidth: nil, maxWidth: .infinity, minHeight: 55, idealHeight: nil, maxHeight: 55, alignment: .center)
                     .padding(.horizontal)
                     .background(Color.gray.opacity(0.3))
                     .cornerRadius(10)
                 
                 Button {
                     
                 } label: {
                     Text("Save".uppercased())
                         .font(.headline)
                         .foregroundColor(.white)
                         .frame(minWidth: 0, idealWidth: nil, maxWidth: .infinity, minHeight: 55, idealHeight: nil, maxHeight: 55, alignment: .center)
                         .background(Color.accentColor)
                         .cornerRadius(10)
                         
                 }
            }
            .padding(.horizontal, 14)

        }
        .navigationTitle("Add an item 🖋")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}

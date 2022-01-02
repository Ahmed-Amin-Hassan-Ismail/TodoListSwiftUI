//
//  ListRowView.swift
//  TodoListSwiftUI
//
//  Created by Ahmed Amin on 02/01/2022.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
        }        
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "This is the first Title!")
    }
}

//
//  ItemModel.swift
//  TodoListSwiftUI
//
//  Created by Ahmed Amin on 03/01/2022.
//

import Foundation


struct ItemModel: Identifiable {
    let id = UUID().uuidString        
    let title: String
    let isCompleted: Bool
    
}

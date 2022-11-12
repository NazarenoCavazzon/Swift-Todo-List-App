//
//  ItemModel.swift
//  todolist
//
//  Created by Nazareno Cavazzon on 09/11/2022.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool){
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func toggle() -> ItemModel {
        return ItemModel(id:id, title: title, isCompleted: !isCompleted)
    }
}

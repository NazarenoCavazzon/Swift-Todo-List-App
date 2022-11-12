//
//  ListRowView.swift
//  todolist
//
//  Created by Nazareno Cavazzon on 09/11/2022.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "xmark.circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .padding(.vertical, 4)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "First", isCompleted: true)
    static var item2 = ItemModel(title: "Second", isCompleted: false)
    
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(PreviewLayout.sizeThatFits)
    }
}

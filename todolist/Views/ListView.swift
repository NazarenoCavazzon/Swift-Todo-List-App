//
//  ListView.swift
//  todolist
//
//  Created by Nazareno Cavazzon on 09/11/2022.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items){ item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.2)){
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .padding(.top, 20)
        .background(Color(UIColor.systemGray6))
        .navigationTitle("Todo List 📝")
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                EditButton()
            }
            ToolbarItem(placement: .primaryAction){
                NavigationLink("Add", destination: AddView())
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        .environmentObject(ListViewModel())
    }
}


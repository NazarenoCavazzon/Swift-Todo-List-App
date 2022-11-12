//
//  todolistApp.swift
//  todolist
//
//  Created by Nazareno Cavazzon on 08/11/2022.
//

import SwiftUI

@main
struct todolistApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}

//
//  NoItemsView.swift
//  todolist
//
//  Created by Nazareno Cavazzon on 12/11/2022.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        HStack(alignment: .center){
            VStack(spacing: 10){
                HStack{
                    Text("There are no items!")
                        .font(.title)
                        .fontWeight(.semibold)
                    Image(systemName: "exclamationmark.triangle.fill")
                        .font(.title)
                }
                Text("Why don't you add tasks to start being more productive?")
                NavigationLink(destination: AddView(), label: {
                    Text("Add Task 😎")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 50)
                        .shadow(color: .accentColor.opacity(0.5) ,radius: 8, x: 0, y: 5)
                })
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .padding(.bottom, 200)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoItemsView()
                .navigationTitle("Title")
        }
    }
}

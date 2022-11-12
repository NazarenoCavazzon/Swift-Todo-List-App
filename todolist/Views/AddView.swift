//
//  AddView.swift
//  todolist
//
//  Created by Nazareno Cavazzon on 09/11/2022.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type Something", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.systemGray6))
                .cornerRadius(12)
                
                Button(action: saveButtonPressed, label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(12)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an item 🖋️")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed(){
        if textIsValid(){
            listViewModel.addItem(title: textFieldText)
            dismiss()
            return
        }
    }
    
    func textIsValid() -> Bool {
        if textFieldText.count < 3 {
            if textFieldText.count == 0{
                alertTitle = "Title can't be empty"
            } else {
                alertTitle = "Title should be at least 3 characters"
            }
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}

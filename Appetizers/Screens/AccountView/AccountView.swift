//
//  AccountView.swift
//  Appetizers
//
//  Created by Maria Mayorova on 26.01.2025.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    @FocusState private var focusedTextField: FormTextField?
    
    enum FormTextField {
        case firstName, lastName, email
    }
    
    var body: some View {
            NavigationStack {
                Form {
                    Section(header: Text("Personal Info")) {
                        TextField("First Name", text: $viewModel.user.firstName)
                            .focused($focusedTextField, equals: .firstName)
                            .onSubmit { focusedTextField = .lastName }
                            .submitLabel(.next)
                        
                        TextField("Last Name", text: $viewModel.user.lastName)
                            .focused($focusedTextField, equals: .lastName)
                            .onSubmit { focusedTextField = .email }
                            .submitLabel(.next)
                        
                        TextField("Email", text: $viewModel.user.email)
                            .focused($focusedTextField, equals: .email)
                            .onSubmit { focusedTextField = nil }
                            .submitLabel(.continue)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        
                        DatePicker("Birthday",
                                   selection: $viewModel.user.birthdate,
                                   in: Date().oneHundredYearsAgo...Date().eighteenYearsAgo,
                                   displayedComponents: .date)
                        
                        Button {
                            viewModel.saveChanges()
                        } label: {
                            Text("Save Changes")
                        }
                    }
                    
                    Section(header: Text("Requests")) {
                        Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                        Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                    }
                    .toggleStyle(SwitchToggleStyle(tint: Color.brandPrimary))
                    
                }
                .navigationTitle(" ☺️ Account")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Button("Dismiss") { focusedTextField = nil }
                    }
                }
                
            }
            .onAppear {
                viewModel.retrieveUser()
            }
            .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}

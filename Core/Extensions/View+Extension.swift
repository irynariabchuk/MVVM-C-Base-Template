//
//  View+Extension.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI

extension View {
    
    func applyNavigation<CoordinatorType: Coordinator>(coordinator: CoordinatorType) -> some View {
        self.modifier(NavigationSetupModifier(coordinator: coordinator))
    }
    
    /// Hide Keyboard
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    /// Displays an alert with an error message
    func errorAlert(isPresented: Binding<Bool>, errorMessage: String?) -> some View {
        alert(isPresented: isPresented) {
            Alert(
                title: Text("error"),
                message: Text(errorMessage ?? ""),
                dismissButton: .default(Text("ok"))
            )
        }
    }
}

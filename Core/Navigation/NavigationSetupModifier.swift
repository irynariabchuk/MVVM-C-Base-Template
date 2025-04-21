//
//  NavigationSetupModifier.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI

// MARK: - NavigationSetupModifier
struct NavigationSetupModifier<CoordinatorType: Coordinator>: ViewModifier {
    
    // MARK: - Body
    @ObservedObject var coordinator: CoordinatorType

    // MARK: - Body
    func body(content: Content) -> some View {
        NavigationStack(path: $coordinator.path) {
            content
                .navigationDestination(for: CoordinatorType.CoordinatorSteps.self) { step in
                    coordinator.redirect(step)
                }
        }
    }
}

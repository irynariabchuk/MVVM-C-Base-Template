//
//  AppCoordinatorView.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI
import Swinject

// MARK: - AppCoordinatorView
struct AppCoordinatorView: View {
    
    // MARK: - Public Properties
    @ObservedObject var coordinator: HomeCoordinator

    // MARK: - Body
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.buildRoot()
                .navigationDestination(for: HomeNavigationStep.self) { step in
                    coordinator.redirect(step)
                }
        }
    }
}

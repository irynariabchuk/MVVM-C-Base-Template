//
//  SwiftUITemplateApp.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI
import Swinject

@main
struct SwiftUITemplateApp: App {
    
    // MARK: - Private Properties
    private let container = DependencyContainer()

    var body: some Scene {
        WindowGroup {
            AppCoordinatorView(coordinator: container.homeCoordinator)
                .environment(\.resolver, container.resolver)
        }
    }
}

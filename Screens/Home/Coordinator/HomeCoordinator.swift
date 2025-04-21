//
//  HomeCoordinator.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import SwiftUI
import  Swinject

// MARK: - HomeCoordinator
final class HomeCoordinator: BaseCoordinator<HomeNavigationStep> {
    
    // MARK: - Public Properties
    var resolver: Resolver
    
    // MARK: - Init
    init(resolver: Resolver) {
        self.resolver = resolver
    }
    
    @ViewBuilder func buildRoot() -> some View {
        HomeView(viewModel: resolver.resolve(HomeViewModel.self)!)
    }
}

extension HomeCoordinator: Coordinator {
    
    @ViewBuilder
    func redirect(_ path: HomeNavigationStep) -> some View {
        switch path {
        case .details(let id):
            // cached VM so we don't recreate heavy stuff every render
            let vm = cachedObject(key: id) {
                self.resolver.resolve(HomeDetailsViewModel.self, argument: id)!
            }
            HomeDetailsView(viewModel: vm)
        case .pushSubscreen1:
            EmptyView()
        case .presentSubscreen2:
            EmptyView()
        }
    }
}

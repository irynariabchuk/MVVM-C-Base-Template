//
//  ViewModelAssembly.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import Swinject

// MARK: - ViewModelAssembly + Assembly
final class ViewModelAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(HomeViewModel.self) { resolver in
            HomeViewModel(
                networkService: resolver.resolve(HomeNetworkServiceProtocol.self)!,
                coordinator: resolver.resolve(HomeCoordinator.self)!
            )
        }
        container.register(HomeDetailsViewModel.self) { (resolver: Resolver, id: String) in
            HomeDetailsViewModel(
                networkService: resolver.resolve(HomeDetailsNetworkServiceProtocol.self)!, 
                coordinator: resolver.resolve(HomeCoordinator.self)!,
                id: id
            )
        }
    }
}

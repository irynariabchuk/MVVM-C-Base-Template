//
//  DIResolver.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import Swinject

// MARK: - DependencyContainer
final class DependencyContainer {
  
    // MARK: - Public Properties
    let assembler: Assembler
    
    var resolver: Resolver {
        assembler.resolver
    }
    
    var homeCoordinator: HomeCoordinator {
         resolver.resolve(HomeCoordinator.self)!
     }

    // MARK: - Init
    init() {
        assembler = Assembler([
            ServiceAssembly(),
            ViewModelAssembly(),
            CoordinatorAssembly()
        ])
    }
}


// MARK: - CoordinatorAssembly +  Assembly
final class CoordinatorAssembly: Assembly {
    func assemble(container: Container) {
        container.register(HomeCoordinator.self) { resolver in
            HomeCoordinator(resolver: resolver)
        }
        .inObjectScope(.container)
    }
}

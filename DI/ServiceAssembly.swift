//
//  ServiceAssembly.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import Swinject

// MARK: - ServiceAssembly + Assembly
final class ServiceAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(URLSessionProtocol.self) { _ in
            URLSession.shared
        }

        container.register(NetworkManagerProtocol.self) { resolver in
            let session = resolver.resolve(URLSessionProtocol.self)!
            return NetworkManager(session: session)
        }

        container.register(HomeNetworkServiceProtocol.self) { resolver in
            let networkManager = resolver.resolve(NetworkManagerProtocol.self)!
            return HomeNetworkService(networkManager: networkManager)
        }
        
        container.register(HomeDetailsNetworkServiceProtocol.self) { resolver in
            let networkManager = resolver.resolve(NetworkManagerProtocol.self)!
            return HomeDetailsNetworkService(networkManager: networkManager)
        }
    }
}


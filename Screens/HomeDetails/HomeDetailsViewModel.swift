//
//  HomeDetailsViewModel.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

// MARK: - HomeDetailsViewModel
final class HomeDetailsViewModel: ObservableObject {
    
    // MARK: - Public Properties
    @Published var state: ViewState = .idle
    let id: String
    let coordinator: HomeCoordinator
    
    // MARK: - Private Properties
    private let networkService: HomeDetailsNetworkServiceProtocol

    // MARK: - Init
    init(
        networkService: HomeDetailsNetworkServiceProtocol,
        coordinator: HomeCoordinator,
        id: String
    ) {
        self.networkService = networkService
        self.coordinator = coordinator
        self.id = id
    }

    // MARK: - Deinit
    deinit {
        print("💥 deinit 💥 HomeDetailsView")
    }

    // MARK: - Public Methods
    @MainActor
    func fetch() async {
        state = .loading
        do {
            let result = try await networkService.fetchData(by: id)
            print("Fetched: \(result.message)")
            state = .idle
        } catch {
            state = .error(error.localizedDescription)
        }
    }

    func didTapOnNavigateToSubScreen1() {
        coordinator.push(.pushSubscreen1)
    }
}

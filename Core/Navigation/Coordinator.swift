//
//  Coordinator.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI

// MARK: - Coordinator
protocol Coordinator: ObservableObject {
    associatedtype CoordinatorSteps: Steps
    associatedtype CoordinatorView: View

    var path: [CoordinatorSteps] { get set }

    @ViewBuilder
    func redirect(_ path: CoordinatorSteps) -> CoordinatorView
}

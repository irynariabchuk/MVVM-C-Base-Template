//
//  HomeNavigationStep.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

// MARK: - HomeNavigationStep
enum HomeNavigationStep: Steps, CacheKeyProvider, Identifiable {
    case details(id: String)
    case pushSubscreen1
    case presentSubscreen2
    
    var id: String {
        switch self {
        case .details(let id):
            return "details-\(id)"
        case .pushSubscreen1:
            return "pushSubscreen1"
        case .presentSubscreen2:
            return "presentSubscreen2"
        }
    }
    
    var cacheKey: String {
        if case let .details(id) = self {
            id
        } else {
            ""
        }
    }
}

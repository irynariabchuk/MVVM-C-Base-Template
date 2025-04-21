//
//  HTTPMethod.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

// MARK: - HTTPMethod
enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    
    var allowsBody: Bool {
        switch self {
        case .get:
            return false
        case .post:
            return true
        }
    }
}

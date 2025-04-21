//
//  Endpoint.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

// MARK: - Endpoint
enum Endpoint {
    case test(String)
        
    var path: String {
        switch self {
        case .test(let text):
            return "/current.json?q=\(text)"
        }
    }
    
    var url: URL? {
        return URL(string: "https://" + APIConfig.baseURL + path + "&key=\(APIConfig.apiKey)")
    }
}

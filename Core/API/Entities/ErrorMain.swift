//
//  ErrorMain.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

// MARK: - ErrormainResponse
struct ErrorMainResponse: Decodable {
    let error: ErrorMain
}

// MARK: - ErrorMain
struct ErrorMain: Decodable {
    let code: Int
    let message: String
}

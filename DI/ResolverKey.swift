//
//  ResolverKey.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI
import Swinject

// MARK: -  ResolverKey + EnvironmentKey
private struct ResolverKey: EnvironmentKey {
    static var defaultValue: Resolver = Assembler().resolver
}

extension EnvironmentValues {
    var resolver: Resolver {
        get { self[ResolverKey.self] }
        set { self[ResolverKey.self] = newValue }
    }
}

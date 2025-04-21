//
//  AppGradientBackground.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI

// MARK: - AppGradientBackground
struct AppGradientBackground: View {
    
    var body: some View {
        LinearGradient(
            colors: [.black, .purple.opacity(0.7)],
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }
}

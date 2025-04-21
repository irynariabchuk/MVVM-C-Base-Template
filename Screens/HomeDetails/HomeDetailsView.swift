//
//  HomeDetailsView.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI

// MARK: - HomeDetailsView
struct HomeDetailsView: View {
    
    // MARK: - Public Properties
    @ObservedObject var viewModel: HomeDetailsViewModel
    @State private var step: HomeNavigationStep?

    // MARK: - View
    var body: some View {
        ZStack {
            AppGradientBackground()
            VStack(spacing: 20) {
                Button {
                    viewModel.didTapOnNavigateToSubScreen1()
                } label: {
                    Text("Push SubScreen1View")
                }
                Button {
                    step = .presentSubscreen2
                } label: {
                    Text("Present SubScreen2View")
                }
            }
        }
        .sheet(item: $step) {
            viewModel.coordinator.redirect($0)
        }
        .toolbar {
            titleToolbar
        }
        .errorAlert(
            isPresented: .constant(viewModel.state.isError),
            errorMessage: viewModel.state.errorMessage
        )
        .task {
            await viewModel.fetch()
        }
        .onAppear {
            print("🧙 Appear 🧙 HomeDetailsView")
        }
    }

    private var titleToolbar: some ToolbarContent {
        ToolbarItem(placement: .principal) {
            Text(viewModel.id)
                .foregroundColor(.white)
                .font(.headline)
        }
    }
}

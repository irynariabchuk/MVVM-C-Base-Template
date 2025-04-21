//
//  ImageView.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI
import SDWebImageSwiftUI

// MARK: - ImageView
struct ImageView: View {
    
    // MARK: - Public Properties
    let url: URL?
    let width: CGFloat?
    let height: CGFloat?
    let alignment: Alignment
    
    // MARK: - Init
    init(
        url: URL?,
        width: CGFloat? = nil,
        height: CGFloat? = nil,
        alignment: Alignment = .center
    ) {
        self.url = url
        self.width = width
        self.height = height
        self.alignment = alignment
    }
    
    // MARK: - Views
    var body: some View {
        WebImage(url: url) { image in
            image.resizable()
        } placeholder: {
            Image(systemName: "photo.artframe.circle.fill")
                .resizable()
                .foregroundStyle(Color.gray)
        }
        .indicator(.activity)
        .transition(.fade(duration: 0.5))
        .scaledToFit()
        .frame(width: width, height: height, alignment: alignment)
    }
}

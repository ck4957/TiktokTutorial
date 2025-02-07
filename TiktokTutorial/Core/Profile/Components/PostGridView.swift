//
//  PostGridView.swift
//  TiktokTutorial
//
//  Created by Chirag Kular on 2/6/25.
//

import SwiftUI

struct PostGridView: View {
    private let items = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible())
    ]

    private let width = (UIScreen.main.bounds.width / 3) - 2

    var body: some View {
        LazyVGrid(columns: items, spacing: 2) {
            ForEach(0 ..< 25) { _ in
                Rectangle()
                    .frame(width: width, height: 200)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView()
}

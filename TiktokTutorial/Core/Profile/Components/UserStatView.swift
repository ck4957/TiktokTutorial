//
//  UserStatView.swift
//  TiktokTutorial
//
//  Created by Chirag Kular on 2/6/25.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)

            Text("\(title)")
                .font(.caption)
                .foregroundStyle(.gray)
        }.frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStatView(value: 100, title: "Followers")
}

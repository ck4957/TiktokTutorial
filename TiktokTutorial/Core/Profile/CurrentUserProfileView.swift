//
//  CurrentUserProfileView.swift
//  TiktokTutorial
//
//  Created by Chirag Kular on 2/6/25.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 2) {
                    // Profile header
                    ProfileHeaderView()

                    // post grid View
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}

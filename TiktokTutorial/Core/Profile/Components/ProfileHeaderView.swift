//
//  ProfileHeaderView.swift
//  TiktokTutorial
//
//  Created by Chirag Kular on 2/6/25.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                Text("username")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }

            HStack(spacing: 16) {
                UserStatView(value: 100, title: "Followers")
                UserStatView(value: 100, title: "Following")
                UserStatView(value: 100, title: "Likes")
            }

            // action button
            Button {} label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }

            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}

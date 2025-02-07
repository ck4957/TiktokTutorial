//
//  UserCell.swift
//  TiktokTutorial
//
//  Created by Chirag Kular on 2/6/25.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))

            VStack(alignment: .leading) {
                Text("carlos")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("Test Name")
                    .font(.footnote)
            }
            Spacer()
        }
    }
}

#Preview {
    UserCell()
}

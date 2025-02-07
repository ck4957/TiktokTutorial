//
//  NotificationCell.swift
//  TiktokTutorial
//
//  Created by Chirag Kular on 2/6/25.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 28, height: 28)
                .foregroundStyle(Color(.systemGray5))
            HStack {
                Text("max")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                    Text(" liked your post skfhsifalfg lfalgjaga. ")
                    .font(.footnote) +
                    Text("5m")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }

            Spacer()

            Rectangle()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}

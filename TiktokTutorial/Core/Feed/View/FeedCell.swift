//
//  FeedCell.swift
//  TiktokTutorial
//
//  Created by Chirag Kular on 2/6/25.
//

import AVKit
import SwiftUI

struct FeedCell: View {
    let post: Post
    var player: AVPlayer

    init(post: Post) {
        self.post = post
        self.player = AVPlayer(url: URL(string: post.videoURL)!)
    }

    var body: some View {
        ZStack {
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal, .vertical])

            VStack {
                Spacer()
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("carlos")
                            .fontWeight(.semibold)
                        Text("2 days ago")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)

                    Spacer()

                    VStack(spacing: 28) {
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.gray)
                        Button {} label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                Text("100")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        Button {} label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                Text("100")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        Button {} label: {
                            VStack {
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .frame(width: 22, height: 28)
                                    .foregroundStyle(.white)
                            }
                        }
                        Button {} label: {
                            VStack {
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                            }
                        }
                    }
                }
                .padding(.bottom, 80)
            }
            .padding()
        }
        .onAppear {
//            player.play()
        }
    }
}

#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, videoURL: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"))
}

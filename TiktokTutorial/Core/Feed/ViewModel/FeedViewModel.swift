//
//  FeedViewModel.swift
//  TiktokTutorial
//
//  Created by Chirag Kular on 2/6/25.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts: [Post] = []

    let videoURL = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    ]

    init() {
        fetchPosts()
    }

    func fetchPosts() {
        // Fetch posts from server
        posts = [
            .init(id: NSUUID().uuidString, videoURL: videoURL[0]),
            .init(id: NSUUID().uuidString, videoURL: videoURL[1]),
            .init(id: NSUUID().uuidString, videoURL: videoURL[2]),
        ]
    }
}

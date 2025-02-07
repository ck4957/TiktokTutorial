//
//  CustomVideoPlayer.swift
//  TiktokTutorial
//
//  Created by Chirag Kular on 2/6/25.
//

import AVKit
import SwiftUI

struct CustomVideoPlayer: UIViewControllerRepresentable {
    var player: AVPlayer

    func makeUIViewController(context: Context) -> UIViewController {
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = false
        controller.exitsFullScreenWhenPlaybackEnds = true
        controller.allowsPictureInPicturePlayback = true
        controller.videoGravity = .resizeAspectFill // fullscreen
        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

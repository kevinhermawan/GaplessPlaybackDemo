//
//  ViewModel.swift
//  Gapless
//
//  Created by Kevin Hermawan on 18/02/24.
//

import Foundation
import AVFoundation

@Observable
class AudioPlayerViewModel {
    private var queuePlayer: AVQueuePlayer?
    private var items: [AVPlayerItem] = []
    
    init(urls: [URL]) {
        setupQueuePlayer(with: urls)
    }
    
    private func setupQueuePlayer(with urls: [URL]) {
        self.items = urls.map { AVPlayerItem(url: $0) }
        self.queuePlayer = AVQueuePlayer(items: self.items)
    }
    
    func play() {
        queuePlayer?.play()
    }
    
    func pause() {
        queuePlayer?.pause()
    }
    
    func queueNextTrack(with url: URL) {
        let nextItem = AVPlayerItem(url: url)
        
        queuePlayer?.insert(nextItem, after: nil)
    }
}

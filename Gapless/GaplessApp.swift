//
//  GaplessApp.swift
//  Gapless
//
//  Created by Kevin Hermawan on 18/02/24.
//

import SwiftUI

@main
struct GaplessApp: App {
    @State private var viewModel: AudioPlayerViewModel
    
    init() {
        let urls: [URL] = [
            URL(string: "https://sampletestfile.com/wp-content/uploads/2023/05/100-KB-MP3.mp3")!,
            URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3")!
        ]
        
        _viewModel = State(initialValue: AudioPlayerViewModel(urls: urls))
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(viewModel)
        }
    }
}

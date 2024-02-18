//
//  ContentView.swift
//  Gapless
//
//  Created by Kevin Hermawan on 18/02/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(AudioPlayerViewModel.self) private var viewModel
    
    var body: some View {
        NavigationStack {
            Form {
                Button("Play", systemImage: "play.fill", action: { viewModel.play() })
                Button("Stop", systemImage: "stop.fill", action: {})
            }
            .navigationTitle("Gapless")
        }
    }
}

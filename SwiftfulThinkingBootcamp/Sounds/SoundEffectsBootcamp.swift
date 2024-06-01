//
//  SoundEffectsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by enesozmus on 1.06.2024.
//

import AVKit
import SwiftUI

class SoundManager {
    
    static let instance = SoundManager() // Singleton
    private init() {}
    
    var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case tada
        case badum
    }
    
    func playSound(sound: SoundOption) {
        
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
}

struct SoundEffectsBootcamp: View {
    var body: some View {
        VStack(spacing: 40) {
            Button {
                SoundManager.instance.playSound(sound: .tada)
            } label: {
                Text("Play sound 1")
            }
            Button {
                SoundManager.instance.playSound(sound: .badum)
            } label: {
                Text("Play sound 2")
            }
        }
    }
}

#Preview {
    SoundEffectsBootcamp()
}

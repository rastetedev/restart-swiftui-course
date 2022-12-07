//
//  AudioPlayer.swift
//  Restart
//
//  Created by Raul Emilio Astete Acuna on 6/12/22.
//

import Foundation
import AVFAudio

var audioPlayer : AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file")
        }
    }
}

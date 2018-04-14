//
//  FirstViewController.swift
//  VideoPlayDemo
//
//  Created by Lurf on 2018/04/13.
//  Copyright © 2018 Lurf. All rights reserved.
//

import UIKit
import AVKit

class FirstViewController: UIViewController {
    @IBOutlet weak var playerView: AVPlayerView!
    
    var isPlayed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "video url"
        
        guard let url = URL(string: urlString) else {
            print("url is undefined.")
            return
        }
        
        let player = AVPlayer(url: url)
        playerView.setPlayer(player: player)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func tap(_ sender: Any) {
        guard let player = playerView.player() else {
            return
        }
        if isPlayed {
            player.pause()
            isPlayed = false
        } else {
            player.play()            
            isPlayed = true
        }
    }
}


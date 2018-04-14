//
//  AVPlayerView.swift
//  VideoPlayDemo
//
//  Created by Lurf on 2018/04/13.
//  Copyright © 2018 Lurf. All rights reserved.
//

import UIKit
import AVKit

class AVPlayerView: UIView {
    override public class var layerClass: Swift.AnyClass {
        get {
            return AVPlayerLayer.self
        }
    }
    
    private var playerLayer: AVPlayerLayer? {
        return self.layer as? AVPlayerLayer
    }
    
    func player() -> AVPlayer? {
        return playerLayer?.player
    }
    
    func setPlayer(player: AVPlayer) {
        playerLayer?.player = player
    }

}

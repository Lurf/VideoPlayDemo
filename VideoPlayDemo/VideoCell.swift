//
//  VideoCell.swift
//  VideoPlayDemo
//
//  Created by Lurf on 2018/04/13.
//  Copyright © 2018 Lurf. All rights reserved.
//

import UIKit
import AVKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var playerView: AVPlayerView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setUp(url: URL) {
        let player = AVPlayer(url: url)
        playerView.setPlayer(player: player)
    }
}

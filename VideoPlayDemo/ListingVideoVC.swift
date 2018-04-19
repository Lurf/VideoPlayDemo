//
//  ListingVideoVC.swift
//  VideoPlayDemo
//
//  Created by Lurf on 2018/04/13.
//  Copyright © 2018 Lurf. All rights reserved.
//

import UIKit

class ListingVideoVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: VideoCell.className(), bundle: .main), forCellReuseIdentifier: VideoCell.className())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 700.0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as? VideoCell {
            
            
            let urlString = "firebase storage url"
            
            guard let url = URL(string: urlString) else {
                return cell
            }
            cell.setUp(url: url)
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let cell = cell as? VideoCell {
            let player = cell.playerView.player()
            player?.play()
        }
        
    }
    
    override func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let cell = cell as? VideoCell {
            let player = cell.playerView.player()
            player?.pause()
        }
    }

}


//
//  ViewController.swift
//  DreamTeam2.8
//
//  Created by Apple on 12.06.2020.
//  Copyright © 2020 Aleksandr Kovalov. All rights reserved.
//

import UIKit
import AVFoundation

class StartViewController: UIViewController {
    
    // MARK: - IB Outlets
    
    @IBOutlet var registerButton: UIButton!
    @IBOutlet var loginButton: UIButton!
    
    var avPlayer: AVPlayer!
    var avPlayerLayer: AVPlayerLayer!
    var paused: Bool = false
    
   // MARK: - View Did Load
    
    override func viewDidLoad() {
        
        registerButton.layer.cornerRadius = 5
        loginButton.layer.cornerRadius = 5
        
        let theURL = Bundle.main.url(forResource:"Food", withExtension: "mp4")
        
        avPlayer = AVPlayer(url: theURL!)
        avPlayerLayer = AVPlayerLayer(player: avPlayer)
        avPlayerLayer.videoGravity = .resizeAspectFill
        avPlayer.volume = 0
        avPlayer.actionAtItemEnd = .none
        
        avPlayerLayer.frame = view.layer.bounds
        view.backgroundColor = .clear
        view.layer.insertSublayer(avPlayerLayer, at: 0)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(playerItemDidReachEnd(notification:)),
                                               name: .AVPlayerItemDidPlayToEndTime,
                                               object: avPlayer.currentItem)
    }
    
    @objc func playerItemDidReachEnd(notification: Notification) {
        let p: AVPlayerItem = notification.object as! AVPlayerItem
        p.seek(to: .zero)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        avPlayer.play()
        paused = false
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        avPlayer.pause()
        paused = true
    }
}

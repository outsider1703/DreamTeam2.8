//
//  LoginViewController.swift
//  DreamTeam2.8
//
//  Created by Apple on 13.06.2020.
//  Copyright © 2020 Aleksandr Kovalov. All rights reserved.
//

import UIKit
import AVFoundation

class LoginViewController: UIViewController {

    // MARK: - IB Outlets
        
   
    @IBOutlet var appleRegisterButton: UIButton!
    @IBOutlet var faceBookRegisterButton: UIButton!
    @IBOutlet var emailRegisterButton: UIButton!
    
    
        
        var avPlayer: AVPlayer!
        var avPlayerLayer: AVPlayerLayer!
        var paused: Bool = false
        
    // MARK: - View Did Load
        
        override func viewDidLoad() {
            
            appleRegisterButton.layer.cornerRadius = 5
            faceBookRegisterButton.layer.cornerRadius = 5
            emailRegisterButton.layer.cornerRadius = 5
            
    // MARK: - Blur
            
            view.backgroundColor = .clear
            let blurredView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
            blurredView.frame = self.view.bounds
            view.insertSubview(blurredView, at: 0)
            
    // MARK: - BackGround Video
            
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
    // MARK: - Methods
    
        @objc func playerItemDidReachEnd(notification: Notification) {
            let p: AVPlayerItem = notification.object as! AVPlayerItem
            p.seek(to: .zero)
        }
    // MARK: - view Did Appear
    
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            avPlayer.play()
            paused = false
        }
    // MARK: - View Did Disappear
    
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
            avPlayer.pause()
            paused = true
        }
    @IBAction func termOfUseAllert() {
        returnAllert(with: "Самое главное правило🍎", and: "Кушай всегда здорово и вкусно!")
    }
    @IBAction func resetLoginAndPusswordButton() {
        returnAllert(with: "🍒", and: "Логин - Admin, пароль - Password ")
    }
    
    }



    // MARK: - Extension

extension LoginViewController {
    private func returnAllert(with message: String, and text: String) {
        let alert = UIAlertController(title: message, message: text, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        present(alert, animated: true)
        alert.addAction(okAction)
    }
}



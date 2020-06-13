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
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    var avPlayer: AVPlayer!
    var avPlayerLayer: AVPlayerLayer!
    var paused: Bool = false
    
    // MARK: - Private properties
    private var user = User.getUserData()
    
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        
        appleRegisterButton.layer.cornerRadius = 5
        faceBookRegisterButton.layer.cornerRadius = 5
        emailRegisterButton.layer.cornerRadius = 5
        
        // MARK: - Blur
        view.backgroundColor = .clear
        let blurredView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
        blurredView.frame = view.bounds
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
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarConroller = segue.destination as! UITabBarController
        let navigationVC = tabBarConroller.viewControllers?.first as! UINavigationController
        let profileVC = navigationVC.topViewController as! ProfileViewController
        profileVC.user = user
        
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
    // MARK: - IB Actions
    
    @IBAction func registerProfile() {
    }
    
    @IBAction func termOfUseAllert() {
        returnAllert(with: "Самое главное правило🍎", and: "Кушай всегда здорово и вкусно!")
    }
    
    @IBAction func resetLoginAndPusswordButton() {
        returnAllert(with: "🍒", and: "Логин - Admin, пароль - Password ")
    }
}



// MARK: Extension - UI Alert

extension LoginViewController {
    private func returnAllert(with message: String, and text: String) {
        let alert = UIAlertController(title: message, message: text, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        present(alert, animated: true)
        alert.addAction(okAction)
    }
}

// MARK: - UIText Field Delegate
extension  LoginViewController: UITextFieldDelegate { 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
}


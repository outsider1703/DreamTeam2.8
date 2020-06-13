//
//  ProfileViewController.swift
//  DreamTeam2.8
//
//  Created by Apple on 13.06.2020.
//  Copyright © 2020 Aleksandr Kovalov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var profileLabelName: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImageView.image = UIImage(named: user.image)
        profileLabelName.text = user.fullName
        
        
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = .scaleAspectFit
            view.insertSubview(backgroundImage, at: 0)

        let blurredView = UIVisualEffectView(effect: UIBlurEffect(style: .systemMaterial))
        blurredView.frame = view.bounds
        blurredView.alpha = 0.9
        view.insertSubview(blurredView, at: 1)
    }
    
    override func viewWillLayoutSubviews() {
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
    }
    
    // MARK: - IB Actions
    
    @IBAction func extitProfile() {
        dismiss(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

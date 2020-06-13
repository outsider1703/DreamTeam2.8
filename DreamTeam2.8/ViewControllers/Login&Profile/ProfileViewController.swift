//
//  ProfileViewController.swift
//  DreamTeam2.8
//
//  Created by Apple on 13.06.2020.
//  Copyright © 2020 Aleksandr Kovalov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = .scaleAspectFit
            view.insertSubview(backgroundImage, at: 0)

        
        

        let blurredView = UIVisualEffectView(effect: UIBlurEffect(style: .systemMaterial))
        blurredView.frame = view.bounds
        blurredView.alpha = 0.8
        
        view.insertSubview(blurredView, at: 1)
        
        

        
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

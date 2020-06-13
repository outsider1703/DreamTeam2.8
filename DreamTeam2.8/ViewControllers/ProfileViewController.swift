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
        
        navigationItem.title = "Александр Ковалев"
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "first.jpg")!)
        let blurredView = UIVisualEffectView(effect: UIBlurEffect(style: .systemMaterial))
        blurredView.frame = view.bounds
        blurredView.alpha = 0.7
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

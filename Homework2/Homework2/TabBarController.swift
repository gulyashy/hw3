//
//  TabBarController.swift
//  Homework2
//
//  Created by Gulshat Yuzeeva on 03.07.2024.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !AuthManager.shared.isAuthenticated{
            performSegue(withIdentifier: "loginSeque", sender: self)
        }
    }

}

//
//  SecondViewController.swift
//  Homework2
//
//  Created by Gulshat Yuzeeva on 02.07.2024.
//

import UIKit

class SecondViewController: UIViewController {
    var name = AuthManager.shared.nickname

    let users = [(username:"Heisenberg", date: "07.09.1958", love: "Loves chemistry"), (username: "Shrek", date:"31.09.2001", love:"Loves Fiona"),(username: "Freddy Fazbear",date: "17.11.1983", love: "Loves children")]
    
    
    @IBOutlet weak var persInfoLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var dateLabel: UITextField!
    @IBOutlet weak var loveLabel: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        for user in users {
            if name == user.username{
                profileImageView.image = UIImage(named: user.username)
                dateLabel.text = user.date
                loveLabel.text = user.love
            }
        }
    }

}

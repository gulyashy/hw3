//
//  ViewController.swift
//  Homework2
//
//  Created by Gulshat Yuzeeva on 02.07.2024.
//

import UIKit

let users = [(username: "Heisenberg", password: "password"), (username: "Shrek", password: "password"), (username:"Freddy Fazbear",password:"password")]

class ViewController: UIViewController {
    
    func alerting(){
        let alert = UIAlertController(title: "Wrong username or password", message: "Please try again", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        self.present(alert, animated: true)
    }
    
    func checking(username: String?, password: String?) -> String? {
        for user in users {
            if user.username == username && user.password == password {
                return user.username
            }
        }
        return nil
    }
    
    @IBOutlet weak var appLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func enterButton(_ sender: UIButton) {
        let usernameChecked = checking(username: usernameTextField.text, password: passwordTextField.text)
        if usernameChecked == nil{
            alerting()
        }
        else{
            AuthManager.shared.isAuthenticated = true
            AuthManager.shared.nickname = usernameChecked
            self.dismiss(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}


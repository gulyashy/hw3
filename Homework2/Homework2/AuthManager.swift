//
//  AuthManager.swift
//  Homework2
//
//  Created by Gulshat Yuzeeva on 03.07.2024.
//

import Foundation

class AuthManager {
    static let shared = AuthManager()
    var isAuthenticated: Bool = false
    var nickname: String?
    
}

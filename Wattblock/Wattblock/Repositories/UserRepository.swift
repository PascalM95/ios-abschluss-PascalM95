//
//  UserRepository.swift
//  Wattblock
//
//  Created by Pascal Mönch on 30.08.23.
//

import Foundation
import FirebaseAuth
import Combine

class UserRepository {
    
    init() {
        checkAuth()
    }
    
    
    
    // MARK: - Variables
    
    static let shared = UserRepository()
    
    var user = CurrentValueSubject<FireUser?, Never>(nil)
    var isUserLoggedIn = CurrentValueSubject<Bool, Never>(false)
    
    
    
    // MARK: - Functions
    
    private func checkAuth() {
        
    }
    
    func login() {
        
    }
    
    func register() {
        
    }
    
    func logout() {
        
    }
    
    private func createUser() {
        
    }
    
    private func fetchUser() {
        
    }
}

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
        guard let currentUser = FirebaseManager.shared.auth.currentUser else {
            print("Not logged in")
            return
        }
        self.isUserLoggedIn.send(true)
        self.fetchUser(with: currentUser.uid)
    }
    
    func login(email: String, password: String) {
        FirebaseManager.shared.auth.signIn(withEmail: email, password: password) { authResult, error in
            if let error {
                print("Login failed: ", error.localizedDescription)
                return
            }
            guard let authResult else { return }
            self.isUserLoggedIn.send(true)
            self.fetchUser(with: authResult.user.uid)
        }
    }
    
    func register(email: String, password: String) {
        FirebaseManager.shared.auth.createUser(withEmail: email, password: password) { authResult, error in
            if let error {
                print("Registration failed: ", error.localizedDescription)
                return
            }
            guard let authResult, let email = authResult.user.email else { return }
            print("User with email '\(email)' is registered with id '\(authResult.user.uid)'")
            self.createUser(with: authResult.user.uid, email: email)
            self.login(email: email, password: password)
        }
    }
    
    func logout() {
        do {
            try FirebaseManager.shared.auth.signOut()
            self.isUserLoggedIn.send(false)
            self.user.send(nil)
            print("User logged out!")
        } catch {
            print("Error signing out: ", error.localizedDescription)
        }
    }
    
    private func createUser(with id: String, email: String) {
        let user = FireUser(id: id, email: email, registeredAt: Date())
        
        do {
            try FirebaseManager.shared.database.collection("users").document(id).setData(from: user)
        } catch let error {
            print("Saving user failed: ", error.localizedDescription)
        }
    }
    
    private func fetchUser(with id: String) {
        FirebaseManager.shared.database.collection("users").document(id).getDocument { document, error in
            if let error {
                print("Fetching user failed: ", error.localizedDescription)
                return
            }
            guard let document else {
                print("Document doesn't exist!")
                return
            }
            do {
                let user = try document.data(as: FireUser.self)
                self.user.send(user)
            } catch {
                print("Document is not a user: ", error.localizedDescription)
            }
        }
    }
    
}

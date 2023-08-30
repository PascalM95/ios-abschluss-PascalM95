//
//  AuthenticationViewModel.swift
//  Wattblock
//
//  Created by Pascal Mönch on 30.08.23.
//

import Foundation

class AuthenticationViewModel: ObservableObject {
    
    // MARK: - Variables
    
    let userRepository = UserRepository.shared
    
    @Published var authMode: AuthenticationMode = .login
    @Published var email = ""
    @Published var password = ""
    
    
    
    // MARK: - Computed Properties
    
    var disableAuth: Bool {
        email.isEmpty || password.isEmpty
    }
    
    
    
    // MARK: - Functions
    
    func switchAuthMode() {
        authMode = authMode == .login ? .register : .login
    }
    
    func authenticate() {
        switch authMode {
        case .login:
            userRepository.login(email: email, password: password)
        case .register:
            userRepository.register(email: email, password: password)
        }
    }
}

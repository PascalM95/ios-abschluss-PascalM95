//
//  UserViewModel.swift
//  Wattblock
//
//  Created by Pascal Mönch on 30.08.23.
//

import Foundation
import FirebaseAuth
import Combine

class UserViewModel: ObservableObject {
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        userRepository.isUserLoggedIn
            .sink { self.isUserLoggedIn = $0 }
            .store(in: &cancellables)
        
        userRepository.user
            .sink { [weak self] user in
                guard let self, let user else { return }
                
                self.userId = user.id
                self.email = user.email
            }
            .store(in: &cancellables)
    }
    
    
    
    // MARK: - Variables
    
    let userRepository = UserRepository.shared
    
    @Published var isUserLoggedIn = false
    @Published var userId = ""
    @Published var email = ""
    @Published var name = ""
    
    
    
    // MARK: - Functions
    
    func logout() {
        userRepository.logout()
    }
}

//
//  WattblockApp.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI
import Firebase

@main
struct WattblockApp: App {
    
    init() {
        FirebaseConfiguration.shared.setLoggerLevel(.min)
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            if userViewModel.isUserLoggedIn {
                HomeView()
                    .environmentObject(userViewModel)
            } else {
                LoginView()
            }
        }
    }
    
    
    
    // MARK: - Variables
    
    @StateObject private var userViewModel = UserViewModel()
    
}

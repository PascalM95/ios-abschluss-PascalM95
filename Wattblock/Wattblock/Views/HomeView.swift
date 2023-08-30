//
//  HomeView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        Button("Abmelden", action: userViewModel.logout)
    }
    
    
    
    // MARK: - Variables
    
    @StateObject var userViewModel = UserViewModel()
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

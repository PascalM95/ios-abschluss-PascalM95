//
//  HomeView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Colors.bavarianBlue
                    .edgesIgnoringSafeArea(.top)
                Colors.background
                
                VStack {
                    NavigationTitle(title: Strings.appName)
                    
                    Spacer()
                    
                    OutlinedIconButton(icon: Illustrations.acorn, title: Strings.vs1, action: {})
                        .padding(.horizontal, Values.padding24)
                    
                    OutlinedIconButton(icon: Illustrations.grass, title: Strings.vs2, action: {})
                        .padding(.horizontal, Values.padding24)
                    
                    OutlinedIconButton(icon: Illustrations.heart, title: Strings.stats, action: {})
                        .padding(.horizontal, Values.padding24)
                    
                    OutlinedIconButton(icon: Illustrations.bell, title: Strings.players, action: {})
                        .padding(.horizontal, Values.padding24)
                    
                    OutlinedIconButton(icon: Illustrations.acorn, title: Strings.rules, action: {})
                        .padding(.horizontal, Values.padding24)
                    
                    Spacer()
                    Spacer()
                }
            }
        }
    }
    
    
    
    // MARK: - Variables
    
    @EnvironmentObject var userViewModel: UserViewModel
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(UserViewModel())
    }
}

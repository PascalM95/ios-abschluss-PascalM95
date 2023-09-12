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
                    NavigationLink(destination: GameView()) {
                        OutlinedIconButton(icon: Illustrations.acorn, title: Strings.vs1)
                            .padding(.horizontal, Values.padding24)
                    }
                    
                    NavigationLink(destination: GameView()) {
                        OutlinedIconButton(icon: Illustrations.grass, title: Strings.vs2)
                            .padding(.horizontal, Values.padding24)
                    }
                    
                    NavigationLink(destination: StatisticView()) {
                        OutlinedIconButton(icon: Illustrations.heart, title: Strings.stats)
                            .padding(.horizontal, Values.padding24)
                    }
                    
                    NavigationLink(destination: PlayerView()) {
                        OutlinedIconButton(icon: Illustrations.bell, title: Strings.players)
                            .padding(.horizontal, Values.padding24)
                    }
                    
                    NavigationLink(destination: RuleView()) {
                        OutlinedIconButton(icon: Illustrations.acorn, title: Strings.rules)
                            .padding(.horizontal, Values.padding24)
                    }
                    
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

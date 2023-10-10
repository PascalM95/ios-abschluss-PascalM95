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
                    NavigationTitle(title: Strings.appName, sfSymbol: SFSymbols.gearFill) {
                        SettingsView()
                            .environmentObject(userViewModel)
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: ChoosePlayerView(gameMode: $selectedGameMode, playerCount: 2).environmentObject(playerViewModel)) {
                        OutlinedIconButton(icon: Illustrations.acorn, title: Strings.vs1)
                            .padding(.horizontal, Values.padding24)
                    }
                    
                    
                    NavigationLink(destination: ChoosePlayerView(gameMode: $selectedGameMode, playerCount: 4).environmentObject(playerViewModel)) {
                        OutlinedIconButton(icon: Illustrations.grass, title: Strings.vs2)
                            .padding(.horizontal, Values.padding24)
                    }
                    
                    NavigationLink(destination: StatisticView()) {
                        OutlinedIconButton(icon: Illustrations.heart, title: Strings.stats)
                            .padding(.horizontal, Values.padding24)
                    }
                    
                    NavigationLink(destination: PlayerView().environmentObject(playerViewModel)) {
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
    
    @EnvironmentObject private var userViewModel: UserViewModel
    @StateObject private var playerViewModel = PlayerViewModel()
    @State private var selectedGameMode: GameMode = .vs1
    
}

#Preview {
    HomeView()
        .environmentObject(UserViewModel())
}

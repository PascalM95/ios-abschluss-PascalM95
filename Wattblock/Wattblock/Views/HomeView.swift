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
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: ChoosePlayerView(gameMode: $selectedGameMode, playerCount: $playerCount)) {
                        OutlinedIconButton(icon: Illustrations.acorn, title: Strings.vs1)
                            .padding(.horizontal, Values.padding24)
                    }
                    
                    NavigationLink(destination: ChoosePlayerView(gameMode: $selectedGameMode, playerCount: $playerCount)) {
                        OutlinedIconButton(icon: Illustrations.grass, title: Strings.vs2)
                            .padding(.horizontal, Values.padding24)
                    }
                    .onTapGesture {
                        selectedGameMode = .vs2
                        playerCount = 4
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
    
    @EnvironmentObject private var userViewModel: UserViewModel
    @StateObject private var playerViewModel = PlayerViewModel()
    @State private var selectedGameMode: GameMode = .vs1
    @State private var playerCount: Int = 2
    
}

#Preview {
    HomeView()
}

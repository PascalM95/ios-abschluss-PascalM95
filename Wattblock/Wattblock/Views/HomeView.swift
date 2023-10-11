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
                    
                    NavigationLink(destination: ChoosePlayerView(gameMode: .vs1, playerCount: 2).environmentObject(playerViewModel)) {
                        OutlinedIconButton(icon: Illustrations.acorn, title: Strings.vs1)
                            .padding(.horizontal, Values.padding24)
                    }
                    
                    NavigationLink(destination: ChoosePlayerView(gameMode: .vs2, playerCount: 4).environmentObject(playerViewModel)) {
                        OutlinedIconButton(icon: Illustrations.grass, title: Strings.vs2)
                            .padding(.horizontal, Values.padding24)
                    }
                    
                    NavigationLink(destination: WeatherView()) {
                        OutlinedIconButton(icon: Illustrations.heart, title: Strings.weather)
                            .padding(.horizontal, Values.padding24)
                    }
                    
                    NavigationLink(destination: PlayerView().environmentObject(playerViewModel)) {
                        OutlinedIconButton(icon: Illustrations.bell, title: Strings.players)
                            .padding(.horizontal, Values.padding24)
                    }
                    
                    Button {
                        isRuleViewPresented.toggle()
                    } label: {
                        OutlinedIconButton(icon: Illustrations.acorn, title: Strings.rules)
                            .padding(.horizontal, Values.padding24)
                    }
                    .sheet(isPresented: $isRuleViewPresented) {
                        RuleView()
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
    @State private var isRuleViewPresented = false
    
}

#Preview {
    HomeView()
        .environmentObject(UserViewModel())
}

//
//  ChoosePlayerView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 09.10.23.
//

import SwiftUI

struct ChoosePlayerView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Colors.bavarianBlue
                    .edgesIgnoringSafeArea(.top)
                Colors.backgroundSettings
                
                VStack(spacing: Values.spacing0) {
                    if gameMode == .vs2 {
                        Text(Strings.choosePlayerHead)
                            .multilineTextAlignment(.center)
                            .font(Fonts.title3)
                            .padding()
                    } else {
                        Text(Strings.chooseEnemy)
                            .multilineTextAlignment(.center)
                            .font(Fonts.title3)
                            .padding()
                    }
                    
                    Form {
                        Section {
                            List(playerViewModel.players) { player in
                                Button(action: {
                                    playerViewModel.togglePlayerSelection(player, playerCount)
                                }) {
                                    HStack {
                                        Text(player.name)
                                        if playerViewModel.selectedPlayers.contains(player) {
                                            Spacer()
                                            SFSymbols.checkmark
                                                .foregroundColor(.green)
                                        }
                                    }
                                }
                            }
                        }
                        NavigationLink(destination: GameView(gameMode: $gameMode)) {
                            Text(Strings.done)
                                .foregroundStyle(Colors.bavarianBlue)
                        }
                    }
                }
            }
            .navigationTitle(Strings.choosePlayer)
        }
    }
    
    
    
    // MARK: - Variables
    
    @EnvironmentObject private var playerViewModel: PlayerViewModel
    @Binding var gameMode: GameMode
    @Binding var playerCount: Int
    
}

#Preview {
    ChoosePlayerView(gameMode: .constant(.vs2), playerCount: .constant(4))
        .environmentObject(PlayerViewModel())
}

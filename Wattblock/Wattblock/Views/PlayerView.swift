//
//  PlayerView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct PlayerView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Colors.bavarianBlue
                    .edgesIgnoringSafeArea(.top)
                Colors.backgroundSettings
                VStack {
                    NavTitleAction(title: Strings.players, sfSymbol: SFSymbols.plus) {
                        playerViewModel.showSheet = true
                    }
                    List(playerViewModel.players, id: \.id) { player in
                        Text(player.name)
                            .swipeActions {
                                Button(Strings.delete) {
                                    playerViewModel.deletePlayer()
                                }
                            }
                            .tint(.red)
                    }
                }
                .sheet(isPresented: $playerViewModel.showSheet, content: {
                    AddPlayerView()
                })
                .environmentObject(playerViewModel)
            }
        }
    }
    
    
    
    // MARK: - Variables
    
    @StateObject var playerViewModel = PlayerViewModel()
    
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

//
//  GameView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct GameView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Colors.bavarianBlue
                    .edgesIgnoringSafeArea(.top)
                Colors.background
                
                VStack {
                    HStack(spacing: 0) {
                        TableView(gameMode: gameMode, name1: "Sepp", name2: "Franz", team: .one)
                        
                        Divider()
                            .frame(width: Values.borderWidth)
                            .background(Colors.dividerColor)
                            .padding(.vertical, Values.padding4)
                        
                        TableView(gameMode: gameMode, name1: "Hans", name2: "Peter", team: .two)
                    }
                }
                VStack {
                    Spacer()
                }
                .toolbar {
                    Button {
                        gameViewModel.resetScore()
                    } label: {
                        SFSymbols.reset
                    }
                }
                .navigationTitle(Strings.appName)
            }
        }
    }
    
    
    // MARK: - Variables
    
    @StateObject private var gameViewModel = GameViewModel()
    let gameMode: GameMode
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(gameMode: .vs2)
    }
}

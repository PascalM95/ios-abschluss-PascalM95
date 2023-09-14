//
//  GameView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct GameView: View {
    
    var body: some View {
        ZStack {
            Colors.bavarianBlue
                .edgesIgnoringSafeArea(.top)
            Colors.background
            
            VStack {
                ZStack {
                    Illustrations.gameScreenBackground
                        .resizable()
                        .scaledToFill()
                        .padding(.bottom, Values.padding100)
                    
                    VStack {
                        HStack {
                            Text("Peter & Hans")
                            Spacer()
                            Text("Sepp & Franz")
                        }
                        .padding(.top, Values.padding24)
                        .padding(.horizontal, Values.padding50)
                        
                        HStack {
                            Image(gameViewModel.imagePoints)
                                .resizable()
                                .frame(width: 150, height: 80)
                                .padding(.horizontal, Values.padding40)
                                .padding(.top, Values.padding12)
                            Spacer()
                        }
                        
                        
                        Spacer()
                        
                        HStack {
                            VStack {
                                GameButton(text: Strings.plus2, action: { gameViewModel.updateScore(Values.plus2) })
                                GameButton(text: Strings.plus3, action: { gameViewModel.updateScore(Values.plus3) })
                                GameButton(text: Strings.plus4, action: { gameViewModel.updateScore(Values.plus4) })
                                GameButton(text: Strings.plus5, action: { gameViewModel.updateScore(Values.plus5) })
                                GameButton(text: Strings.minus2, action: { gameViewModel.updateScore(Values.minus2) })
                            }
                            Spacer()
                            
                            VStack {
                                GameButton(text: Strings.plus2, action: { gameViewModel.updateScore(Values.plus2) })
                                GameButton(text: Strings.plus3, action: { gameViewModel.updateScore(Values.plus3) })
                                GameButton(text: Strings.plus4, action: { gameViewModel.updateScore(Values.plus4) })
                                GameButton(text: Strings.plus5, action: { gameViewModel.updateScore(Values.plus5) })
                                GameButton(text: Strings.minus2, action: { gameViewModel.updateScore(Values.minus2) })
                            }
                        }
                        .padding(.horizontal, Values.padding50)
                        .padding(.bottom, Values.padding24)
                    }
                }
            }
            .navigationTitle(Strings.appName)
        }
    }
    
    
    
    // MARK: - Variables
    
    @StateObject private var gameViewModel = GameViewModel()
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}

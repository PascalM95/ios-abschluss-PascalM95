//
//  TableView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 19.09.23.
//

import SwiftUI

struct TableView: View {
    
    var body: some View {
        
        HStack(spacing: 0) {
            VStack {
                if gameMode == .vs2 {
                    Text("\(name1) & \(name2)")
                } else {
                    Text(name1)
                }
                
                Divider()
                    .frame(height: Values.borderWidth)
                    .background(Colors.dividerColor)
                
                gameViewModel.imagePoints
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .frame(height: Values.gameImageSize)
                        .padding()
               
                Spacer()
                
                HStack {
                    if team == .two {
                        Spacer()
                    }
                    VStack {
                        HStack {
                            GameButton(text: Strings.plus2) {
                                gameViewModel.addScore(Values.plus2)
                            }
                            GameButton(text: Strings.plus3) {
                                gameViewModel.addScore(Values.plus3)
                            }
                        }
                        
                        HStack {
                            GameButton(text: Strings.plus4) {
                                gameViewModel.addScore(Values.plus4)
                            }
                            GameButton(text: Strings.plus5) {
                                gameViewModel.addScore(Values.plus5)
                            }
                        }
                        
                        HStack {
                            GameButton(text: Strings.minus2) {
                                gameViewModel.removeScore(Values.minus2, from: &gameViewModel.scores)
                            }
                            GameButton(text: Strings.minus3) {
                                gameViewModel.removeScore(Values.minus3, from: &gameViewModel.scores)
                            }
                        }
                    }
                    if team == .one {
                        Spacer()
                    }
                }
                .padding()
            }
            .padding(.top, Values.padding16)
        }
        
    }
    
    
    
    // MARK: - Variables
    
    @EnvironmentObject private var gameViewModel: GameViewModel
    let gameMode: GameMode
    let name1: String
    let name2: String
    let team: Team
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView(gameMode: .vs2, name1: "Hans", name2: "Peter", team: .one)
            .environmentObject(GameViewModel())
    }
}

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
                            Text("Peter")
                            Spacer()
                            Text("Sepp")
                        }
                        .padding(.top, Values.padding24)
                        .padding(.horizontal, Values.padding50)
                        Spacer()
                        HStack {
                            GameButton(text: Strings.plus2, action: {})
                            GameButton(text: Strings.plus3, action: {})
                            GameButton(text: Strings.plus4, action: {})
                            GameButton(text: Strings.plus5, action: {})
                            GameButton(text: Strings.plus6, action: {})
                            GameButton(text: Strings.minus2, action: {})
                        }
                    }
                }
            }
            .navigationTitle(Strings.appName)
        }
    }
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}

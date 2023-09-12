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

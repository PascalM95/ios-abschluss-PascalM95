//
//  TableView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 19.09.23.
//

import SwiftUI

struct TableView: View {
    
    var body: some View {
        VStack {
            if gameMode == .vs2 {
                Text("\(name1) & \(name2)")
            } else {
                Text(name1)
            }
            
            Divider()
                .frame(height: Values.borderWidth)
                .background(Colors.dividerColor)
            
            image1
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(height: Values.gameImageSize)
                .padding()
            
            image2
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(height: Values.gameImageSize)
                .padding()
        }
    }
    
    
    
    // MARK: - Variables
    
    let gameMode: GameMode
    let name1: String
    let name2: String
    let image1: Image
    let image2: Image
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView(gameMode: .vs2, name1: "Hans", name2: "Peter", image1: Image("punkte2"), image2: Image("punkte2"))
    }
}

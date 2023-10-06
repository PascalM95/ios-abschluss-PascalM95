//
//  NavTitleAction.swift
//  Wattblock
//
//  Created by Pascal Mönch on 06.10.23.
//

import SwiftUI

struct NavTitleAction: View {
    
    var body: some View {
        HStack {
            Text(title)
                .font(Fonts.largeTitle)
                .bold()
                .foregroundColor(Colors.accentColor)
            
            Spacer()
            Button(action: action) {
                sfSymbol
                    .font(Fonts.title1)
                    .foregroundColor(Colors.accentColor)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Colors.bavarianBlue)
        
    }
    
    
    
    // MARK: - Variables
    
    
    let title: String
    let sfSymbol: Image
    let action: () -> Void
    
    
}

#Preview {
    NavTitleAction(title: Strings.players, sfSymbol: SFSymbols.plus, action: {})
}

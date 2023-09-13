//
//  GameButton.swift
//  Wattblock
//
//  Created by Pascal Mönch on 13.09.23.
//

import SwiftUI

struct GameButton: View {
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(Fonts.headline)
                .padding()
        }
        .border(Colors.bavarianBlue, width: Values.borderWidth)
        .cornerRadius(Values.cornerRadius)
    }
    
    
    
    // MARK: - Variables
    
    let text: String
    let action: () -> Void
}

struct GameButton_Previews: PreviewProvider {
    static var previews: some View {
        GameButton(text: "+2", action: {})
    }
}

//
//  TextButton.swift
//  Wattblock
//
//  Created by Pascal Mönch on 30.08.23.
//

import SwiftUI

struct TextButton: View {
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(Fonts.callout)
                .foregroundColor(Colors.authColor)
                .frame(maxWidth: .infinity)
        }
        .padding(Values.padding8)
    }
    
    
    
    // MARK: - Variables
    
    let title: String
    let action: () -> Void
}

struct TextButton_Previews: PreviewProvider {
    static var previews: some View {
        TextButton(title: "Anmelden") { }
    }
}

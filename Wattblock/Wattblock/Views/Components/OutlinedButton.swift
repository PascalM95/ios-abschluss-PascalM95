//
//  OutlinedButton.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct OutlinedButton: View {
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(Fonts.headline)
                .frame(maxWidth: .infinity)
        }
        .padding(.vertical, Values.padding16)
        .border(Colors.bavarianBlue, width: Values.borderWidth)
        .cornerRadius(Values.cornerRadius)
        .padding([.horizontal, .top], Values.padding16)
    }
    
    
    
    // MARK: - Variables
    
    let title: String
    let action: () -> Void
    
}

struct OutlinedButton_Previews: PreviewProvider {
    static var previews: some View {
        OutlinedButton(title: "Anmelden") { }
    }
}

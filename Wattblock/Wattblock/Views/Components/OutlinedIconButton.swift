//
//  OutlinedIconButton.swift
//  Wattblock
//
//  Created by Pascal Mönch on 31.08.23.
//

import SwiftUI

struct OutlinedIconButton: View {
    
    var body: some View {
        Button(action: action) {
            HStack {
                icon
                    .resizable()
                    .frame(width: Values.iconFrame, height: Values.iconFrame)
                    .scaledToFit()
                Spacer()
                Text(title)
                    .font(.headline)
                    .padding(.trailing, Values.padding40)
                    
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .overlay(RoundedRectangle(cornerRadius: Values.cornerRadius)
                .stroke(Colors.bavarianBlue, lineWidth: Values.borderWidth))
        }
        .padding(Values.padding16)
        
    }
    
    
    
    // MARK: - Variables
    
    let icon: Image
    let title: String
    let action: () -> Void
    
}



struct OutlinedIconButton_Previews: PreviewProvider {
    static var previews: some View {
        OutlinedIconButton(icon: Illustrations.acorn, title: "1 vs 1", action: {})
    }
}

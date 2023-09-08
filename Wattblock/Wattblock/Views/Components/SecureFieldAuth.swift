//
//  SecureFieldAuth.swift
//  Wattblock
//
//  Created by Pascal Mönch on 31.08.23.
//

import SwiftUI

struct SecureFieldAuth: View {
    
    var body: some View {
        HStack {
            icon
                .foregroundColor(Colors.accentColor)
            SecureField(text, text: $inputText)
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: Values.cornerRadius)
                .stroke(lineWidth: Values.borderWidth)
                .foregroundColor(Colors.bavarianBlue))
    }
    
    
    
    // MARK: - Variables
    
    let icon: Image
    let text: String
    @Binding var inputText: String
}

struct SecureFieldAuth_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldAuth(icon: SFSymbols.email, text: "Passwort", inputText: .constant(""))
    }
}

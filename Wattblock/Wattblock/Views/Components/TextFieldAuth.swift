//
//  TextFieldAuth.swift
//  Wattblock
//
//  Created by Pascal Mönch on 30.08.23.
//

import SwiftUI

struct TextFieldAuth: View {
    
    var body: some View {
        HStack {
            icon
                .foregroundColor(Colors.accentColor)
            TextField(text, text: $inputText)
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

struct TextFieldAuth_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldAuth(icon: SFSymbols.email, text: "E-Mail", inputText: .constant(""))
    }
}

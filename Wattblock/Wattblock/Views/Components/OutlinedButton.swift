//
//  OutlinedButton.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct OutlinedButton: View {
    
    var body: some View {
        Button {
            print("Platzhalter")
        } label: {
            Text("Anmelden")
                .font(.headline)
                .frame(maxWidth: .infinity)
        }
        .padding()
        .border(Color("BavarianBlue"), width: 1)
        .cornerRadius(4)
        .padding()
    }
    
}

struct OutlinedButton_Previews: PreviewProvider {
    static var previews: some View {
        OutlinedButton()
    }
}

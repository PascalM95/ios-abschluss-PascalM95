//
//  EditProfileView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct EditProfileView: View {
    
    var body: some View {
        ZStack {
            Colors.bavarianBlue
                .edgesIgnoringSafeArea(.top)
            Colors.backgroundSettings
            
            VStack {
                Form {
                    Section(header: Text("Benutzername")) {
                        Text("WattPro123")
                        TextField("Neuer Benutzername", text: $text)
                    }
                    Section(header: Text("Email ändern")) {
                        Text("example@text.com")
                        TextField("Neue Email", text: $text)
                        TextField("Neue Email bestätigen", text: $text)
                    }
                    Section(header: Text("Passwort ändern")) {
                        SecureField("Altes Passwort", text: $text)
                        SecureField("Neues Passwort", text: $text)
                        SecureField("Neues Passwort bestätigen", text: $text)
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Speichern")
                    })
                    .foregroundColor(.blue)
                }
            }
            .padding(.top, Values.padding4)
        }
    }
    
    
    
    // MARK: - Variables
    
    @State private var text = ""
    
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}

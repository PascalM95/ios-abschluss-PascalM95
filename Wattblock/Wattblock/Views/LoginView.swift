//
//  LoginView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct LoginView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            Illustrations.logo
                .resizable()
                .scaledToFit()
                .padding(.horizontal, Values.padding40)
            
            VStack(spacing: Values.spacing12) {
                ZStack(alignment: .bottom) {
                    TextField("E-Mail", text: $authenticationViewModel.email)
                        .frame(minHeight: 36)
                    Divider()
                }
                
                ZStack(alignment: .bottom) {
                    SecureField("Passwort", text: $authenticationViewModel.password1)
                        .frame(minHeight: 36)
                    Divider()
                }
                
                if authenticationViewModel.authMode == .register {
                    ZStack(alignment: .bottom) {
                        SecureField("Passwort wiederholen", text: $authenticationViewModel.password2)
                            .frame(minHeight: 36)
                        Divider()
                    }
                }
            }
            .font(.headline)
            .textInputAutocapitalization(.never)
            .padding([.horizontal, .top], Values.padding40)
            .padding(.bottom, Values.padding16)
            
            OutlinedButton(title: authenticationViewModel.authMode.title, action: authenticationViewModel.authenticate)
                .padding(.horizontal, Values.padding24)
                .disabled(authenticationViewModel.disableAuth)
            
            TextButton(title: authenticationViewModel.authMode.alternativeTitle, action: authenticationViewModel.switchAuthMode)
            
        }
    }
    
    
    
    // MARK: - Variables
    
    @StateObject private var authenticationViewModel = AuthenticationViewModel()
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

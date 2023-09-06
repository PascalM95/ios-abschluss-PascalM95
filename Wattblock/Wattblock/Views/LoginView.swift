//
//  LoginView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct LoginView: View {
    
    var body: some View {
        ZStack {
            Colors.bavarianBlue
                .edgesIgnoringSafeArea(.all)
            Colors.background
            VStack(spacing: 0) {
                Illustrations.logo
                    .resizable()
                    .frame(width: Values.logoFrameSize, height: Values.logoFrameSize)
                    .scaledToFit()
                    .padding(Values.padding24)
                
                VStack(spacing: Values.spacing12) {
                    
                    TextFieldAuth(icon: SFSymbols.email, text: Strings.email, inputText: $authenticationViewModel.email)
                    
                    SecureFieldAuth(icon: SFSymbols.lock, text: Strings.password, inputText: $authenticationViewModel.password1)
                    
                    if authenticationViewModel.authMode == .register {
                        SecureFieldAuth(icon: SFSymbols.lock, text: Strings.repeatPassword, inputText: $authenticationViewModel.password2)
                    }
                }
                .font(.headline)
                .textInputAutocapitalization(.never)
                .padding([.horizontal, .top], Values.padding50)
                .padding(.bottom, Values.padding16)
                
                OutlinedButton(title: authenticationViewModel.authMode.title, action: authenticationViewModel.authenticate)
                    .padding(.horizontal, Values.padding40)
                    .disabled(authenticationViewModel.disableAuth)
                
                TextButton(title: authenticationViewModel.authMode.alternativeTitle, action: authenticationViewModel.switchAuthMode)
            }
            .padding(.bottom, Values.padding40)
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

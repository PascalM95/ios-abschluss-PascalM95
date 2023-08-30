//
//  LoginView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Image("wattblock_logo")
                .resizable()
                .scaledToFit()
                .padding(50)
            OutlinedButton()
                .padding(.horizontal)
            Divider()
                .padding(.horizontal)
            OutlinedButton()
                .padding(.horizontal)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

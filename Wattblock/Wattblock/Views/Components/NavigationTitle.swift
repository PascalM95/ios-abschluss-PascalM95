//
//  NavigationTitle.swift
//  Wattblock
//
//  Created by Pascal Mönch on 06.09.23.
//

import SwiftUI

struct NavigationTitle<Content: View>: View {
    
    var body: some View {
        HStack {
            Text(title)
                .font(Fonts.largeTitle)
                .bold()
                .foregroundColor(Colors.accentColor)
            
            Spacer()
            NavigationLink {
                SettingsView()
            } label: {
                sfSymbol
                    .font(Fonts.title1)
                    .foregroundColor(Colors.accentColor)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Colors.bavarianBlue)
        
    }
    
    
    
    // MARK: - Variables
    
    
    let title: String
    let sfSymbol: Image
    let destination: Content
    
    init(title: String, sfSymbol: Image, @ViewBuilder destination: () -> Content) {
        self.title = title
        self.sfSymbol = sfSymbol
        self.destination = destination()
    }
}

struct NavigationTitle_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTitle(title: Strings.appName, sfSymbol: SFSymbols.gearFill) {
            SettingsView()
        }
    }
}

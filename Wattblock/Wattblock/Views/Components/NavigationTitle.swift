//
//  NavigationTitle.swift
//  Wattblock
//
//  Created by Pascal Mönch on 06.09.23.
//

import SwiftUI

struct NavigationTitle: View {
    
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
                SFSymbols.gearFill
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
}

struct NavigationTitle_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTitle(title: Strings.appName)
    }
}

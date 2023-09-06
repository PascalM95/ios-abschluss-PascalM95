//
//  SettingRow.swift
//  Wattblock
//
//  Created by Pascal Mönch on 06.09.23.
//

import SwiftUI

struct SettingRow: View {
    
    var body: some View {
        HStack {
            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, Values.padding12)
                .padding(.horizontal, Values.padding24)
                .background(Colors.settingRow)
        }
        .cornerRadius(Values.cornerSettings)
        .padding(.horizontal)
        
    }
    
    
    
    // MARK: - Variables
    
    let title: String
}

struct SettingRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingRow(title: "Profil")
    }
}

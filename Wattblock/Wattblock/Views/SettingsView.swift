//
//  SettingsView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Colors.bavarianBlue
                    .edgesIgnoringSafeArea(.top)
                Colors.backgroundSettings
                
                VStack {
                    Form {
                        Section {
                            NavigationLink {
                                EditProfileView()
                            } label: {
                                HStack {
                                    SFSymbols.personCircle
                                    Text(Strings.profile)
                                }
                            }
                        }
                        
                        Button(Strings.signOut, action: userViewModel.logout)
                            .foregroundColor(.red)
                    }
                }
                .navigationTitle(Strings.settings)
                .padding(.top, Values.padding4)
            }
        }
    }
    
    
    
    // MARK: - Variables
    
    @EnvironmentObject private var userViewModel: UserViewModel
    
}



struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(UserViewModel())
    }
}

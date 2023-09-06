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
//                    SettingRow(title: Strings.profile)
//                    SettingRow(title: Strings.general)
//                    Spacer()
                        Section {
                            Button {
                                self.showProfileSheet.toggle()
                            } label: {
                                HStack {
                                    SFSymbols.personCircle
                                    Text(Strings.profile)
                                }
                            }
                        }
                        
                        Section {
                            
                        }
                        
                        Section {
                            
                        }
                        
                        Button(Strings.signOut, action: userViewModel.logout)
                            .foregroundColor(.red)
                    }
                }
                .navigationTitle(Strings.settings)
                .padding(.top, Values.padding4)
            }
            .sheet(isPresented: $showProfileSheet) {
                EditProfileView()
            }
            
        }
    }
    
    
    
    // MARK: - Variables
    
    @State private var showProfileSheet = false
    @EnvironmentObject var userViewModel: UserViewModel
    
}



struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(UserViewModel())
    }
}

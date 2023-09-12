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
                        
                        Section {
                            
                        }
                        
                        Section {
                            Button {
                                self.showSheet.toggle()
                            } label: {
                                HStack {
                                    Text(Strings.termsOfUse)
                                }
                            }
                            
                            Button {
                                self.showSheet.toggle()
                            } label: {
                                HStack {
                                    Text(Strings.dataProtection)
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
            .sheet(isPresented: $showSheet) {
               
            }
            
        }
    }
    
    
    
    // MARK: - Variables
    
    @State private var showSheet = false
    @EnvironmentObject var userViewModel: UserViewModel
    
}



struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(UserViewModel())
    }
}

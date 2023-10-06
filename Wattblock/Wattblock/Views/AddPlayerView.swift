//
//  AddPlayerView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 06.10.23.
//

import SwiftUI

struct AddPlayerView: View {
    
    var body: some View {
        VStack {
            Form {
                Section {
                    TextField(Strings.name, text: $newPlayer)
                }
                Button {
                    playerViewModel.addPlayer(name: newPlayer)
                    playerViewModel.showSheet = false
                } label: {
                    Text(Strings.save)
                        .foregroundColor(Colors.bavarianBlue)
                }
            }
            
        }
    }
    
    
    
    // MARK: - Variables
    
    @EnvironmentObject var playerViewModel: PlayerViewModel
    @State private var newPlayer = ""
}

#Preview {
    AddPlayerView()
}

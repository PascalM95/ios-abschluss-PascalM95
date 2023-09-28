//
//  PlayerView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct PlayerView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Colors.bavarianBlue
                    .edgesIgnoringSafeArea(.top)
                Colors.backgroundSettings
                VStack {
                    Form {
                        Section {
                            ForEach(0..<10) { number in
                            Text("Name")
                            }
                            
                        }
                    }
                }
                .navigationTitle(Strings.players)
                .padding(.top, Values.padding4)
            }
        }
    }
    
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

//
//  StatisticView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 12.09.23.
//

import SwiftUI

struct StatisticView: View {
    
    var body: some View {
        ZStack {
            Colors.bavarianBlue
                .edgesIgnoringSafeArea(.top)
            Colors.background
            VStack {
                
            }
            .navigationTitle(Strings.stats)
        }
    }
    
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView()
    }
}

//
//  StartView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        ZStack {
            Image("background1")
                .ignoresSafeArea()
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

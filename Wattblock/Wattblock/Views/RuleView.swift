//
//  RuleView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 29.08.23.
//

import SwiftUI

struct RuleView: View {
    
    var body: some View {
        ZStack {
            Colors.bavarianBlue
                .edgesIgnoringSafeArea(.top)
            Colors.background
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    Text(Strings.rulesPart1)
                        .font(Fonts.title1)
                        .bold()
                        .padding(.vertical)
                    Text(Strings.rulesPart2)
                        .padding(.top)
                    Text(Strings.rulesPart3)
                        .font(Fonts.title3)
                        .bold()
                        .padding(.vertical)
                    Text(Strings.rulesPart4)
                    Text(Strings.rulesPart5)
                        .bold()
                    Text(Strings.rulesPart6)
                        .bold()
                    Text(Strings.rulesPart7)
                        .bold()
                    Text(Strings.rulesPart8)
                    Text(Strings.rulesPart9)
                        .bold()
                        .padding(.vertical)
                    Text(Strings.rulesPart10)
                    Text(Strings.rulesPart11)
                    Text(Strings.rulesPart12)
                    Text(Strings.rulesPart13)
                        .font(Fonts.title3)
                        .bold()
                        .padding(.vertical)
                    Text(Strings.rulesPart14)
                    Text(Strings.rulesPart15)
                    Text(Strings.rulesPart16)
                    Text(Strings.rulesPart17)
                        .bold()
                    Text(Strings.rulesPart18)
                    Text(Strings.rulesPart19)
                    Text(Strings.rulesPart20)
                    Text(Strings.rulesPart21)
                    Text(Strings.rulesPart22)
                        .font(Fonts.title3)
                        .bold()
                        .padding(.vertical)
                    Text(Strings.rulesPart23)
                        .padding(.bottom)
                }
                .padding(.horizontal)
            }
            .navigationTitle(Strings.rules)
            .scrollIndicators(.never)
        }
    }
    
}

#Preview {
    RuleView()
}

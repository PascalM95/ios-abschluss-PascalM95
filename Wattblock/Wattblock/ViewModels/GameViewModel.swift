//
//  GameViewModel.swift
//  Wattblock
//
//  Created by Pascal Mönch on 14.09.23.
//

import Foundation

class GameViewModel: ObservableObject {
    
    // MARK: - Variables
    
    @Published var score = 0
    
    var imagePoints: String {
        switch score {
        case 2:
            return Strings.twoPoints
        case 3:
            return Strings.threePoints
        case 4:
            return Strings.fourPoints
        case 5:
            return Strings.fivePoints
        case 6:
            return Strings.sixPoints
        case 7:
            return Strings.sevenPoints
        case 8:
            return Strings.eightPoints
        case 9:
            return Strings.ninePoints
        case 10:
            return Strings.tenPoints
        case 11:
            return Strings.elevenPoints
        case 12:
            return Strings.twelvePoints
        case 13:
            return Strings.thirteenPoints
        case 14:
            return Strings.fourteenPoints
        case 15:
            return Strings.fifteenPoints
        default:
            return ""
        }
    }
    
    
    
    // MARK: - Functions
    
    func updateScore(_ points: Int) {
        score += points
    }
    
}

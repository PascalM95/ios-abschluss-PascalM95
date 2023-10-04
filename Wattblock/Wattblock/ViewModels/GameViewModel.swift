//
//  GameViewModel.swift
//  Wattblock
//
//  Created by Pascal Mönch on 14.09.23.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
    
    // MARK: - Variables
    
    @Published var score = 0
    @Published var firstButton2 = false
    @Published var firstButton3 = false
    
    
    
    // MARK: - Functions
    
    var imagePoints: Image {
            switch score {
            case 2:
                return Illustrations.twoPoints
            case 3:
                return Illustrations.threePoints
            case 4:
                return Illustrations.fourPoints
            case 5:
                if firstButton2 {
                    return Illustrations.fivePoints1
                } else if firstButton3 {
                    return Illustrations.fivePoints2
                } else {
                    return Illustrations.fivePoints1
                }
            case 6:
                return Illustrations.sixPoints1
            case 7:
                return Illustrations.sevenPoints1
            case 8:
                return Illustrations.eightPoints1
            case 9:
                return Illustrations.ninePoints1
            case 10:
                return Illustrations.tenPoints1
            case 11:
                return Illustrations.elevenPoints1
            case 12:
                return Illustrations.twelvePoints1
            case 13:
                return Illustrations.thirteenPoints1
            case 14:
                return Illustrations.fourteenPoints1
            case 15:
                return Illustrations.fifteenPoints1
            default:
                return Image("")
            }
    }
    
    
    
    // MARK: - Functions
    
    func updateScore(_ points: Int) {
        var newScore = score + points
        
        newScore = min(max(newScore, 0), 14)
        
        score = newScore
    }
    
    func resetScore() {
        score = 0
        firstButton2 = false
        firstButton3 = false
    }
}

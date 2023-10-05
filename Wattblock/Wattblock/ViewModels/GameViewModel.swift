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
    
    @Published var scores : [Int] = [] {
        didSet {
            if let newScore = scores.last {
                let totalScore = scores.reduce(0, +)
                
                updateImage(totalScore, newScore)
            }
        }
    }
    
    @Published var imagePoints: Image = Image("")
    
    
    
    // MARK: - Functions
    
    func updateImage(_ totalScore: Int, _ newScore: Int) {
        if totalScore == 2 && newScore == 2 {
            imagePoints = Illustrations.twoPoints
        } else if totalScore == 3 && newScore == 3 {
            imagePoints = Illustrations.threePoints
        } else if totalScore == 4 && (newScore == 2 || newScore == 4) {
            imagePoints = Illustrations.fourPoints
        } else if totalScore == 5 && newScore == 2 {
            imagePoints = Illustrations.fivePoints2
        } else if totalScore == 5 && (newScore == 3 || newScore == 5) {
            imagePoints = Illustrations.fivePoints1
        } else if totalScore == 6 && (newScore == 2 || newScore == 4) {
            imagePoints = Illustrations.sixPoints1
        } else if totalScore == 6 && newScore == 3 {
            imagePoints = Illustrations.sixPoints2
        } else if totalScore == 7 && (scores.first == 2 || scores.first == 4 || scores.first == 5) && (newScore == 3 || newScore == 2 || newScore == 5) {
            imagePoints = Illustrations.sevenPoints1
        } else if totalScore == 7 && scores.first == 3 && (newScore == 2 || newScore == 4) {
            imagePoints = Illustrations.sevenPoints2
        } else if totalScore == 8 && (scores.first == 2 || scores.first == 4) && (newScore == 2 || newScore == 4) {
            imagePoints = Illustrations.eightPoints1
        } else if totalScore == 8 && (scores.first == 2 || scores.first == 5) && newScore == 3 {
            imagePoints = Illustrations.eightPoints2
        } else if totalScore == 8 && scores.first == 3 && (newScore == 2 || newScore == 3 || newScore == 5) {
            imagePoints = Illustrations.eightPoints3
        } else if totalScore == 9 && (scores.first == 2 || scores.first == 4 || scores.first == 5) && (newScore == 2 || newScore == 3 || newScore == 4 || newScore == 5) {
            imagePoints = Illustrations.ninePoints1
        } else if totalScore == 9 && scores.first == 3 && (newScore == 2 || newScore == 4) {
            imagePoints = Illustrations.ninePoints2
        } else if totalScore == 9 && scores.first == 3 && newScore == 3 {
            imagePoints = Illustrations.ninePoints3
        } else if totalScore == 10 && (scores.first == 2 || scores.first == 4) && (newScore == 2 || newScore == 4) && !scores.contains([3, 3]) {
            imagePoints = Illustrations.tenPoints1
        } else if totalScore == 10 && (scores.first == 2 || scores.first == 4 || scores.first == 5) && (newScore == 2 || newScore == 3 || newScore == 5) {
            imagePoints = Illustrations.tenPoints2
        } else if totalScore == 10 && scores.first == 3 && (newScore == 2 || newScore == 4 || newScore == 5) {
            imagePoints = Illustrations.tenPoints3
        } else if totalScore == 11 && (scores.first == 2 || scores.first == 4 || scores.first == 5) && (newScore == 2 || newScore == 3 || newScore == 4 || newScore == 5) {
            imagePoints = Illustrations.elevenPoints1
        } else if totalScore == 11 && scores.first == 3 && (newScore == 2 || newScore == 4) {
            imagePoints = Illustrations.elevenPoints2
        } else if totalScore == 11 && (scores.first == 2 || scores.first == 5) && newScore == 3 {
            imagePoints = Illustrations.elevenPoints3
        } else if totalScore == 11 && scores.first == 3 && (newScore == 3 || newScore == 5){
            imagePoints = Illustrations.elevenPoints4
        } else if totalScore == 12 && (scores.first == 2 || scores.first == 4) && (newScore == 2 || newScore == 4) && !scores.contains(3) {
            imagePoints = Illustrations.twelvePoints1
        } else if totalScore == 12 && scores.first == 3 && newScore == 3 && !scores.contains(2) {
            imagePoints = Illustrations.twelvePoints2
        }
    }
    
    func addScore(_ score: Int) {
        scores.append(score)
    }
    
    func removeLastScore(_ score: Int) {
        if !scores.isEmpty && scores.last == score {
            scores.removeLast()
        }
    }
    
    
    func resetScore() {
        scores.removeAll()
        imagePoints = Image("")
    }
}

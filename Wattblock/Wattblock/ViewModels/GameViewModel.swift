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
        
        // MARK: - Logik 2 Punkte
        if totalScore == 2 && newScore == 2 && !scores.contains(3) {
            imagePoints = Illustrations.twoPoints
            
        //MARK: - Logik 3 Punkte
        } else if totalScore == 3 && newScore == 3 && !scores.contains(2) {
            imagePoints = Illustrations.threePoints
            
        //MARK: - Logik 4 Punkte
        } else if totalScore == 4 && (newScore == 2 || newScore == 4) && !scores.contains(3) {
            imagePoints = Illustrations.fourPoints
        
        //MARK: - Logik 5 Punkte
        } else if totalScore == 5 && (newScore == 3 || newScore == 5) {
            imagePoints = Illustrations.fivePoints1
        } else if totalScore == 5 && newScore == 2 {
            imagePoints = Illustrations.fivePoints2
            
        //MARK: - Logik 6 Punkte
        } else if totalScore == 6 && (scores.first == 2 || scores.first == 4) && (newScore == 2 || newScore == 4) && !scores.contains(3) {
            imagePoints = Illustrations.sixPoints1
        } else if totalScore == 6 && scores.first == 3 && newScore == 3 && !scores.contains(2) {
            imagePoints = Illustrations.sixPoints2
            
        //MARK: - Logik 7 Punkte
        } else if totalScore == 7 && (scores.first == 2 || scores.first == 4 || scores.first == 5) && (newScore == 3 || newScore == 2 || newScore == 5) && !scores.contains([3, 3]) {
            imagePoints = Illustrations.sevenPoints1
        } else if totalScore == 7 && scores.first == 3 && (newScore == 2 || newScore == 4) && !scores.contains([3, 3]) {
            imagePoints = Illustrations.sevenPoints2
           
        //MARK: - Logik 8 Punkte
        } else if totalScore == 8 && (scores.first == 2 || scores.first == 4) && (newScore == 2 || newScore == 4) && !scores.contains(3) {
            imagePoints = Illustrations.eightPoints1
        } else if totalScore == 8 && (scores.first == 2 || scores.first == 5) && newScore == 3 && !scores.contains([2, 2]) {
            imagePoints = Illustrations.eightPoints2
        } else if totalScore == 8 && scores.first == 3 && (newScore == 2 || newScore == 3 || newScore == 5) && !scores.contains([2, 2]) {
            imagePoints = Illustrations.eightPoints3
         
        //MARK: - Logik 9 Punkte
        } else if totalScore == 9 && (scores.first == 2 || scores.first == 4 || scores.first == 5) && (newScore == 2 || newScore == 3 || newScore == 4 || newScore == 5) && !scores.contains([3, 3]) {
            imagePoints = Illustrations.ninePoints1
        } else if totalScore == 9 && scores.first == 3 && (newScore == 2 || newScore == 4) && !scores.contains([3, 3]) {
            imagePoints = Illustrations.ninePoints2
        } else if totalScore == 9 && scores.first == 3 && newScore == 3 && !scores.contains(2) {
            imagePoints = Illustrations.ninePoints3
           
        //MARK: - Logik 10 Punkte
        } else if totalScore == 10 && (scores.first == 2 || scores.first == 4) && (newScore == 2 || newScore == 4) && !scores.contains(3) {
            imagePoints = Illustrations.tenPoints1
        } else if totalScore == 10 && (scores.first == 2 || scores.first == 4 || scores.first == 5) && (newScore == 2 || newScore == 3 || newScore == 5) && !scores.contains([2, 2, 2]) && !scores.contains([3, 3, 3]) {
            imagePoints = Illustrations.tenPoints2
        } else if totalScore == 10 && scores.first == 3 && (newScore == 2 || newScore == 4 || newScore == 5) && !scores.contains([2, 2, 2]) && !scores.contains([3, 3, 3]) {
            imagePoints = Illustrations.tenPoints3
         
        //MARK: - Logik 11 Punkte
        } else if totalScore == 11 && (scores.first == 2 || scores.first == 4 || scores.first == 5) && (newScore == 2 || newScore == 3 || newScore == 4 || newScore == 5) && !scores.contains([3, 3]) {
            imagePoints = Illustrations.elevenPoints1
        } else if totalScore == 11 && scores.first == 3 && (newScore == 2 || newScore == 4) && !scores.contains([3, 3]) {
            imagePoints = Illustrations.elevenPoints2
        } else if totalScore == 11 && (scores.first == 2 || scores.first == 5) && newScore == 3 && !scores.contains([2, 2]) {
            imagePoints = Illustrations.elevenPoints3
        } else if totalScore == 11 && scores.first == 3 && (newScore == 2 || newScore == 3 || newScore == 5) && !scores.contains([2, 2]) {
            imagePoints = Illustrations.elevenPoints4
            
        //MARK: - Logik 12 Punkte
        } else if totalScore == 12 && (scores.first == 2 || scores.first == 4) && (newScore == 2 || newScore == 4) && !scores.contains(3) {
            imagePoints = Illustrations.twelvePoints1
        } else if totalScore == 12 && scores.first == 3 && newScore == 3 && !scores.contains(2) {
            imagePoints = Illustrations.twelvePoints2
        } else if totalScore == 12 && (scores.first == 2 || scores.first == 4 || scores.first == 5) && (newScore == 2 || newScore == 3 || newScore == 4 || newScore == 5) && !scores.contains([3, 3, 3]) {
            imagePoints = Illustrations.twelvePoints3
        } else if totalScore == 12 && scores.first == 3 && (newScore == 2 || newScore == 3 || newScore == 4 || newScore == 5) && !scores.contains([3, 3, 3]) {
            imagePoints = Illustrations.twelvePoints4
            
        //MARK: - Logik 13 Punkte
        } else if totalScore == 13 && (scores.first == 2 || scores.first == 4 || scores.first == 5) && (newScore == 2 || newScore == 3 || newScore == 4 || newScore == 5) && !scores.contains([3, 3]) {
            imagePoints = Illustrations.thirteenPoints1
        } else if totalScore == 13 && scores.first == 3 && (newScore == 2 || newScore == 4) && !scores.contains([3, 3]) {
            imagePoints = Illustrations.thirteenPoints2
        } else if totalScore == 13 && (scores.first == 2 || scores.first == 4 || scores.first == 5) && (newScore == 2 || newScore == 3 || newScore == 5) && !scores.contains([2, 2, 2]) {
            imagePoints = Illustrations.thirteenPoints3
        } else if totalScore == 13 && scores.first == 3 && (newScore == 2 || newScore == 3 || newScore == 4 || newScore == 5) && !scores.contains([2, 2, 2]) {
            imagePoints = Illustrations.thirteenPoints4
            
        //MARK: - Logik 14 Punkte
        } else if totalScore == 14 && (scores.first == 2 || scores.first == 4) && (newScore == 2 || newScore == 4) && !scores.contains(3) {
            imagePoints = Illustrations.fourteenPoints1
        } else if totalScore == 14 && (scores.first == 2 || scores.first == 4 || scores.first == 5) && (newScore == 2 || newScore == 3 || newScore == 4 || newScore == 5) && !scores.contains([3, 3, 3]) {
            imagePoints = Illustrations.fourteenPoints2
        } else if totalScore == 14 && scores.first == 3 && (newScore == 2 || newScore == 3 || newScore == 4 || newScore == 5) && !scores.contains([3, 3, 3]) {
            imagePoints = Illustrations.fourteenPoints3
        } else if totalScore == 14 && (scores.first == 2 || scores.first == 5) && newScore == 3 && !scores.contains([2, 2]) {
            imagePoints = Illustrations.fourteenPoints4
        } else if totalScore == 14 && scores.first == 3 && (newScore == 2 || newScore == 3 || newScore == 5) && !scores.contains([2, 2]) {
            imagePoints = Illustrations.fourteenPoints5
            
        //MARK: - Logik 15 Punkte
        } else if totalScore == 15 && scores.first == 3 && newScore == 3 && !scores.contains(2) {
            imagePoints = Illustrations.fifteenPoints1
        } else if totalScore == 15 && (scores.first == 2 || scores.first == 4 || scores.first == 5) && (newScore == 2 || newScore == 3 || newScore == 4 || newScore == 5) && !scores.contains([2, 2, 2, 2]) && !scores.contains([3, 3, 3, 3]) {
            imagePoints = Illustrations.fifteenPoints2
        } else if totalScore == 15 && scores.first == 3 && (newScore == 2 || newScore == 3 || newScore == 4 || newScore == 5) && !scores.contains([2, 2, 2, 2]) && !scores.contains([3, 3, 3, 3]) {
            imagePoints = Illustrations.fifteenPoints3
        } else if totalScore == 15 && (scores.first == 2 || scores.first == 4 || scores.first == 5) && (newScore == 2 || newScore == 3 || newScore == 4 || newScore == 5) && !scores.contains([3, 3]) {
            imagePoints = Illustrations.fifteenPoints4
        } else if totalScore == 15 && scores.first == 3 && (newScore == 2 || newScore == 4) && !scores.contains([3, 3]) {
            imagePoints = Illustrations.fifteenPoints5
        }
    }
    
    func addScore(_ score: Int) {
        if score == 4 {
            scores.append(contentsOf: [2, 2])
        } else if score == 5 {
            scores.append(contentsOf: [2, 3])
        } else {
            scores.append(score)
        }
    }
    
    func removeScore(_ score: Int, from scores: inout [Int]) {
        if let index = scores.lastIndex(of: score) {
            scores.remove(at: index)
        }
        if scores.isEmpty {
            imagePoints = Image("")
        }
    }
    
    
    func resetScore() {
        scores.removeAll()
        imagePoints = Image("")
    }
}

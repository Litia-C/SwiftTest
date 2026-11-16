//
//  Game.swift
//  AppTest02
//
//  Created by alumne on 02/11/2026.
//

import Foundation
struct Game{
    static let minValue = 1
    static let maxValue = 100
    private(set) var target = Int.random(in: Game.minValue...Game.maxValue)
    private(set) var points = 0
    private(set) var score = 0
    private(set) var marksList = [Mark]()
    private(set) var rounds = 0
    
    mutating func calculatePoint(sliderValue: Double){
        self.points = 100 - Int(abs(sliderValue-Double(target)))
        self.score+=self.points
        self.marksList.append(Mark(value: self.points, date: Date()))
        self.rounds += 1
        
        self.marksList.sort(by: {$0 > $1})
        
        if self.marksList.count>=10 {
            self.marksList.popLast()
        }
        
    }
    mutating func calculateTarget(){
        self.target = Int.random(in: 1...100)
    }
}

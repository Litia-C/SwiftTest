//
//  Game.swift
//  AppTest02
//
//  Created by alumne on 02/11/2026.
//

import Foundation
struct Game{
    private(set) var target = Int.random(in: 1...100)
    private(set) var points = 0
    mutating func calculatePoint(sliderValue: Double){
        self.points = 100-Int((sliderValue-Double(target)))
    }
    mutating func calculateTarget(){
        self.target = Int.random(in: 1...100)
    }
}

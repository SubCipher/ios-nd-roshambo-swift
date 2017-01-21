//
//  WinnerText.swift
//  Roshambo
//
//  Created by knax on 1/21/17.
//  Copyright © 2017 StepwiseDesigns. All rights reserved.
//

import Foundation

var winningText: String?
var powerMatchUpText: String?

func setWinnerText(matchWinner:(wonMatch:PowerOptions,lostMatch:PowerOptions)){
    
    
    powerMatchUpText = "\(matchWinner.wonMatch.description) vs \(matchWinner.lostMatch.description)"
    switch matchWinner.wonMatch {
    case .paper:
        winningText = "paper just covered that ass"
    case .scissors:
        winningText = "sissors just stuck it to you"
    case .rock:
        winningText = "did you smell what the rock was cooking"
    }
 }

extension PowerOptions: CustomStringConvertible {
    var description: String {
        get {
            switch (self) {
            case .paper:
                return "Paper"
            case .scissors:
                return "Scissors"
            case .rock:
                return "Rock"
            }
        }
    }
}

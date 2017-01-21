//
//  RoshamboGame.swift
//  Roshambo
//
//  Created by knax on 1/18/17.
//  Copyright © 2017 StepwiseDesigns. All rights reserved.
//

import Foundation

enum PowerOptions: Int { case paper = 0, scissors, rock }



struct RoshamboGame {
   
        //get a random number
    func genRandomNumber()-> Int{
        
        let randomNumber = Int(arc4random_uniform(3))
        return randomNumber
    }
    
    //tie random number to a powerOption
    func randomPowerSelection()->PowerOptions{
        let randomPowerGenerated = PowerOptions(rawValue: genRandomNumber())!
        print("randomPowerGenerated: \(randomPowerGenerated.description)")
        return randomPowerGenerated
    }
    
    //game logic for determining winner of a match
    mutating func gameMatch(playerPower: PowerOptions)->PowerOptions{
        var power1: PowerOptions
        var power2: PowerOptions
        
        
        switch playerPower{
        case .paper:
            power1 = .paper
            power2 = .rock
        case .scissors:
            power1 = .paper
            power2 = .scissors
        case .rock:
            power1 = .scissors
            power2 = .rock
        }

        let randomPower = randomPowerSelection()
        let winner = randomPower.rawValue == power1.rawValue || randomPower.rawValue == power2.rawValue ? playerPower : randomPower
        let loser = winner == playerPower ? randomPower : playerPower
        setWinnerText(matchWinner:(winner,loser))
            return winner
           }
}










//
//  MatchViewController.swift
//  Roshambo
//
//  Created by kpicart on 1/18/17.
//  Copyright © 2017 StepwiseDesigns. All rights reserved.
//

import UIKit

class MatchViewController: UIViewController {

    var activeGame = RoshamboGame()
    
    //segue code only
    override func prepare(for segue:UIStoryboardSegue, sender: Any?){
        if segue.identifier == "gameOn" {
            
            let thisChoice = sender as! UIButton
            let selectedPower = thisChoice.titleLabel?.text == "scissors" ? PowerOptions.scissors : PowerOptions.rock
            
            let winner = activeGame.gameMatch(playerPower: selectedPower)
            
            let controller = segue.destination as! ResultsViewController
            controller.displayImage = winner.rawValue
        
            print(selectedPower)
        }
        
    }
    //segue using mostly storyBoard --shared segue connection with prepare(for:segue:UIStoryboardSegue, sender:Any?)
    @IBAction func rocking(_ sender: UIButton) {

        performSegue(withIdentifier: "gameOn", sender: sender)
    }
    
    //using segue programatically && with storyBoard (UIButton)
       @IBAction func poweraMatch() {
        let winner = activeGame.gameMatch(playerPower: .paper)
        var controller: ResultsViewController
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        
            controller.displayImage = winner.rawValue
        print("paper")
        self.present(controller, animated: true, completion: nil)
    }
}


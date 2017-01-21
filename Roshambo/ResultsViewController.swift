//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by knax on 1/18/17.
//  Copyright © 2017 StepwiseDesigns. All rights reserved.
//

import Foundation
import UIKit

class ResultsViewController: UIViewController {
    
    var displayImage: Int?
//    var winningText: String?
//    var powerMatchUpText: String?
    @IBOutlet weak var powerMatchUpLabel: UILabel!
    
    @IBOutlet weak var powerImage: UIImageView!
    @IBOutlet weak var winningTextLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        
        //self.powerImage.image = UIImage(named: "\(displayImage)") ?? powerImage.image
        //replace with a default image setting
        
        if let displayImage = self.displayImage{ self.powerImage.image = UIImage(named: "\(displayImage)") }
        
        winningTextLabel.text = winningText ?? ""
        //^this^ replaces this>: if let winningText = self.winningText { winningTextLabel.text = winningText } 
        powerMatchUpLabel.text = powerMatchUpText
    }

    @IBAction func oK(_ sender: Any) {
        dismiss()
    }
    func dismiss(){
        self.dismiss(animated: true, completion: nil)
    }
   
}

//
//  ViewController.swift
//  TextEntryExample
//
//  Created by Lauren Traum on 9/19/17.
//  Copyright © 2017 Lauren Traum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var game = TicTacToe()  //Whyhow
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var spot1: UIButton!
    @IBOutlet weak var spot2: UIButton!
    @IBOutlet weak var spot4: UIButton!
    @IBOutlet weak var spot6: UIButton!
    @IBOutlet weak var spot9: UIButton!
    @IBOutlet weak var spot8: UIButton!
    @IBOutlet weak var spot7: UIButton!
    @IBOutlet weak var spot5: UIButton!
    @IBOutlet weak var spot3: UIButton!
    
    @IBAction func startOver(_ sender: UIButton) {
        game.taken.removeAll()
        game.computerDominion.removeAll()
        game.userDominion.removeAll()
        game.notTaken = [1,2,3,4,5,6,7,8,9]
        label.text = "Lets play tic-tac-toe! Claim your space!"
        self.spot1.setTitle("-", for: .normal)
        self.spot2.setTitle("-", for: .normal)
        self.spot3.setTitle("-", for: .normal)
        self.spot4.setTitle("-", for: .normal)
        self.spot5.setTitle("-", for: .normal)
        self.spot6.setTitle("-", for: .normal)
        self.spot7.setTitle("-", for: .normal)
        self.spot8.setTitle("-", for: .normal)
        self.spot9.setTitle("-", for: .normal)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Lets play tic-tac-toe! Claim your space!"
        
        
        spot1.tag = 1
        spot2.tag = 2
        spot3.tag = 3
        spot4.tag = 4
        spot5.tag = 5
        spot6.tag = 6
        spot7.tag = 7
        spot8.tag = 8
        spot9.tag = 9
        
        self.spot1.setTitle("-", for: .normal)
        self.spot2.setTitle("-", for: .normal)
        self.spot3.setTitle("-", for: .normal)
        self.spot4.setTitle("-", for: .normal)
        self.spot5.setTitle("-", for: .normal)
        self.spot6.setTitle("-", for: .normal)
        self.spot7.setTitle("-", for: .normal)
        self.spot8.setTitle("-", for: .normal)
        self.spot9.setTitle("-", for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func userTakesTurnVisual(_ sender: UIButton) {
        //how to get button ID sender action/how to change a buttons state/label?
        let result = game.playGame(userClaim: sender.tag)  // use result to update tic tac toe board and label at top
        label.text = result.0
        
        switch sender.tag
        {
        case 1:
            self.spot1.setTitle("x", for: .normal)
        case 2:
            self.spot2.setTitle("x", for: .normal)
        case 3:
            self.spot3.setTitle("x", for: .normal)
        case 4:
            self.spot4.setTitle("x", for: .normal)
        case 5:
            self.spot5.setTitle("x", for: .normal)
        case 6:
            self.spot6.setTitle("x", for: .normal)
        case 7:
            self.spot7.setTitle("x", for: .normal)
        case 8:
            self.spot8.setTitle("x", for: .normal)
        case 9:
            self.spot9.setTitle("x", for: .normal)
        default:
            print("something went wrong")
            
        switch result.1
        {
        case 1:
            self.spot1.setTitle("o", for: .normal)
        case 2:
            self.spot2.setTitle("o", for: .normal)
        case 3:
            self.spot3.setTitle("o", for: .normal)
        case 4:
            self.spot4.setTitle("o", for: .normal)
        case 5:
            self.spot5.setTitle("o", for: .normal)
        case 6:
            self.spot6.setTitle("o", for: .normal)
        case 7:
            self.spot7.setTitle("o", for: .normal)
        case 8:
            self.spot8.setTitle("o", for: .normal)
        case 9:
            self.spot9.setTitle("o", for: .normal)
        default:
            print("computer couldn't take move")
            
            
        }
        
        
        //self.spot1.setTitle("x", for: .usertook)
        
        
        
        //[spot1.setTitle
            
           // setTitle:@"-" forState:UIControlStateNormal];
        //[spot1 setTitle:@"X" forState:UIControlStateSelected];
        //spot(userClaim) setTitle:@"-" forState:
    }


    
    }
}


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
    var whoFirst = 0 // this means computer goes first
    
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
        spot1.isEnabled = true
        self.spot2.setTitle("-", for: .normal)
        spot2.isEnabled = true
        self.spot3.setTitle("-", for: .normal)
        spot3.isEnabled = true
        self.spot4.setTitle("-", for: .normal)
        spot4.isEnabled = true
        self.spot5.setTitle("-", for: .normal)
        spot5.isEnabled = true
        self.spot6.setTitle("-", for: .normal)
        spot6.isEnabled = true
        self.spot7.setTitle("-", for: .normal)
        spot7.isEnabled = true
        self.spot8.setTitle("-", for: .normal)
        spot8.isEnabled = true
        self.spot9.setTitle("-", for: .normal)
        spot9.isEnabled = true
        
        if whoFirst == 0{
            let chosen = game.playGameComputerFirst()
            markBoardForComputer(chosen: chosen.1)
        }
        
    }
    // call playGameComputerFirst from viewDidAppear if computer takes first turn
    
    
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
        
        if whoFirst == 0{
            let chosen = game.playGameComputerFirst()
            markBoardForComputer(chosen: chosen.1)
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeSettings(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Change Setting?", message: "This will restart your game", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {(action:UIAlertAction!) in
            self.dismiss(animated: true, completion: nil)})
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion:nil)
        
    }
    
    
    @IBAction func userTakesTurnVisual(_ sender: UIButton) {
        //added whoPlay as global variable, does that make sense?
        //how to get button ID sender action/how to change a buttons state/label?
        let result = game.playGame(userClaim: sender.tag)  // use result to update tic tac toe board and label at top
    
        label.text = result.0 // first item in result, which is the message to display
        
        // update the appearance of the board for user's choice
        if sender.tag == 1{
            self.spot1.setTitle("x", for: .normal)
            spot1.isEnabled = false
        }else if sender.tag == 2{
            self.spot2.setTitle("x", for: .normal)
            spot2.isEnabled = false
        }else if sender.tag == 3{
            self.spot3.setTitle("x", for: .normal)
            spot3.isEnabled = false
        }else if sender.tag == 4{
            self.spot4.setTitle("x", for: .normal)
            spot4.isEnabled = false
        }else if sender.tag == 5{
            self.spot5.setTitle("x", for: .normal)
            spot5.isEnabled = false
        }else if sender.tag == 6{
            self.spot6.setTitle("x", for: .normal)
            spot6.isEnabled = false
        }else if sender.tag == 7{
            self.spot7.setTitle("x", for: .normal)
            spot7.isEnabled = false
        }else if sender.tag == 8{
            self.spot8.setTitle("x", for: .normal)
            spot8.isEnabled = false
        }else if sender.tag == 9{
            self.spot9.setTitle("x", for: .normal)
            spot9.isEnabled = false
        }
    
        // update the appearance of the board for computer's choice
        markBoardForComputer(chosen: result.1)
    }
            
    
    func markBoardForComputer(chosen: Int){
        if (chosen == 1){
            self.spot1.setTitle("o", for: .normal)
            spot1.isEnabled = false
        }else if chosen == 2{
            self.spot2.setTitle("o", for: .normal)
            spot2.isEnabled = false
        }else if chosen == 3{
            self.spot3.setTitle("o", for: .normal)
            spot3.isEnabled = false
        }else if chosen == 4{
            self.spot4.setTitle("o", for: .normal)
            spot4.isEnabled = false
        }else if chosen == 5{
            self.spot5.setTitle("o", for: .normal)
            spot5.isEnabled = false
        }else if chosen == 6{
            self.spot6.setTitle("o", for: .normal)
            spot6.isEnabled = false
        }else if chosen == 7{
            self.spot7.setTitle("o", for: .normal)
            spot7.isEnabled = false
        }else if chosen == 8{
            self.spot8.setTitle("o", for: .normal)
            spot8.isEnabled = false
        }else if chosen == 9{
            self.spot9.setTitle("o", for: .normal)
            spot9.isEnabled = false
        }else{
            print("something went wrong")
        }
    }
}
    



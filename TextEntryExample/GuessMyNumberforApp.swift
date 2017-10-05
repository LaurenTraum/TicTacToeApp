//
//  GuessMyNumberforApp.swift
//  TextEntryExample
//
//  Created by Lauren Traum on 9/20/17.
//  Copyright © 2017 Lauren Traum. All rights reserved.
//

import Foundation

class GuessMyNumberforApp {
    var mysteryNumber = 0
    func name()-> String{
        return "Guess My Number Game"
    }
    func getGuess() -> Int { //prompt for guess
        print("guess my number! ")
        let guess = readLine()
        if let guess = guess{
            if let guessNumber = Int(guess){
                return guessNumber
            }else {
                return 0
            }
        }
        return 0
    }
    //generate random computer choice
    
    func getMysteryNumber() -> Int {  //modify to guess mystery number
        let mysteryNumber = Int(arc4random_uniform(100)) + 1
        return mysteryNumber
    }
    //compare and choose winner
    
    
    
    
    func chooseWinner(userGuess: Int) -> String{ //compare
        
        if (userGuess > mysteryNumber){
            return("too high. Try again! You can do it.")
            
        } else if (userGuess < mysteryNumber){
            return("Too Low. Try again! You can do it.")
            
        }else{
            return("thats correct")
        }
        
    }
    
    func playTheGame(){  //no changes
        mysteryNumber = getMysteryNumber()
    }
    //ask about playing again
    
//    func playAgain() -> String {
//        print("Do you want to play again? Enter y or n: ")
//        let answer = readLine()
//        if let answer = answer{
//            if (answer.lowercased() != "y"){
//                return "n"
//            }
//        }
//        return "y"
//    }



}

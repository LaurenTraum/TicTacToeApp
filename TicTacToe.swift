////
////  gameLogic.swift
////  TextEntryExample
////
////  Created by Lauren Traum on 9/19/17.
////  Copyright © 2017 Lauren Traum. All rights reserved.
////
//
import Foundation

class TicTacToe{
    var userDominion = Set<Int>()
    var computerDominion = Set<Int>()
    var taken = Set<Int>()
    var notTaken = [1,2,3,4,5,6,7,8,9]

    let win1: Set = [1, 2, 3]
    let win2: Set = [4, 5, 6]
    let win3: Set = [7, 8, 9]
    let win4: Set = [1, 4, 7]
    let win5: Set = [2, 5, 8]
    let win6: Set = [3, 6, 9]
    let win7: Set = [1, 5, 9]
    let win8: Set = [3, 5, 7]


    //get user choice
    func getUserClaim(userClaim:Int){ //prompt for guess
        if (!taken.contains(userClaim) && userClaim < 10 && userClaim > 0){
            taken.insert(userClaim)
            let i = notTaken.index(of: userClaim)
            notTaken.remove(at: i!)
            userDominion.insert(userClaim)
                        
        } else if (taken.contains(userClaim)) {  //taken ask about
            print("there is something seriously wrong.")
        }
        
    }


    //generate random computer choice

    func getComputerClaim() -> Int {  //modify to guess mystery number
        let i = Int(arc4random_uniform(UInt32(notTaken.count)))
        let computerClaim = notTaken[i]
        taken.insert(computerClaim)  //look up
        notTaken.remove(at: i)
        computerDominion.insert(computerClaim)
        return computerClaim
    }
    //compare and choose winner


    func chooseWinner() -> String{ // after a turn has been taken, check if there's a winner
        
        if (userDominion.isSuperset(of: win1) || userDominion.isSuperset(of: win2) || userDominion.isSuperset(of: win3)) || userDominion.isSuperset(of: win4) || userDominion.isSuperset(of: win5) || userDominion.isSuperset(of: win6) || userDominion.isSuperset(of: win7) || userDominion.isSuperset(of: win8){
            return "user wins"
            
        } else if (computerDominion.isSuperset(of: win1) || computerDominion.isSuperset(of: win2) || computerDominion.isSuperset(of: win3)) || computerDominion.isSuperset(of: win4) || computerDominion.isSuperset(of: win5) || computerDominion.isSuperset(of: win6) || computerDominion.isSuperset(of: win7) || computerDominion.isSuperset(of: win8){
            
            return "computer wins"
            
        }else if notTaken.count == 0 {
            return "cats game"
        }else{
            return "keep on going!!"
            
        }
        
        
    }
    func playGame(userClaim: Int) -> (String, Int) {  //no changes
        var computerSpot = 0
        getUserClaim(userClaim: userClaim) // user turn
        var result = chooseWinner()
        if result == "keep on going!!" { // if user hasn't won...
            computerSpot = getComputerClaim() // computer turn
            result = chooseWinner()
        }
        return (result, computerSpot)
    }
}

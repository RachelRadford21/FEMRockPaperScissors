//
//  ViewModel.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 6/30/22.
//

import Foundation
import SwiftUI

enum Choices: String, CaseIterable {
    case rock
    case paper
    case scissors
}

class ViewModel: ObservableObject {
    @Published var isPresented = false
    @Published var isPresented2 = false
    @Published var choiceArray = ["icon-scissors", "icon-rock", "icon-paper"]
    @Published var score = 12
    @Published var userChoice = ""
    @Published var computerChoice = ""
    @Published var youLose = false
    @Published var tie = false
    @Published var youWin = false
    @Published var gameOver = false
    
    func makeChoice() {
          if userChoice != "" {
              computerChoice = choiceArray.randomElement() ?? "icon-scissors"
             
              print(computerChoice)
          }
      }
    func loseScore() {
        if  userChoice == "icon-scissors" && computerChoice == "icon-rock" && score > 0{
            score -= 1
            youLose = true
            youWin = false
            tie = false
            gameOver = false
            print("You Lose")
        }else if userChoice == "icon-rock" && computerChoice == "icon-paper" && score > 0{
            youLose = true
            youWin = false
            tie = false
            gameOver = false
            score -= 1
            print("You Lose")
        } else if userChoice == "icon-paper" && computerChoice == "icon-scissors" && score > 0{
            youLose = true
            youWin = false
            tie = false
            gameOver = false
            score -= 1
            print("You Lose")
        }else if score == 0 {
            youLose = true
            youWin = false
            gameOver = true
            tie = false
            score = 12
            print("Game Over")
        }
//        else {
//            youWin = false
//            youLose = false
//            gameOver = false
//            tie = false
//        }
    }
    func winScore() {
        if userChoice == "icon-rock" && computerChoice == "icon-scissors" && score < 12 {
            youWin = true
            youLose = false
            tie = false
            gameOver = false
            score += 1
            print("won")
        }else if userChoice == "icon-paper" && computerChoice == "icon-rock" && score < 12 {
            youWin = true
            youLose = false
            tie = false
            gameOver = false
            score += 1
            print("won")
        }else if userChoice == "icon-scissors" && computerChoice == "icon-paper" && score < 12 {
            youWin = true
            youLose = false
            tie = false
            gameOver = false
            score += 1
            print("won")
            
        }
    }
    func tieScore() {
        if userChoice == "icon-rock" && computerChoice == "icon-rock" ||  userChoice == "icon-paper" && computerChoice == "icon-paper" || userChoice == "icon-scissors" && computerChoice == "icon-scissors"{
            score += 0
            tie = true
            youWin = false
            youLose = false
          ///  gameOver = false
            print("tie")
        }
    }
}
 


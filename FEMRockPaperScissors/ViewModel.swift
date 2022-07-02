//
//  ViewModel.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 6/30/22.
//

import Foundation




class ViewModel: ObservableObject {
    @Published var isPresented = false
    @Published var isPresented2 = false
    @Published var choiceArray = ["icon-scissors", "icon-rock", "icon-paper"]
    @Published var score = 12
    @Published var userChoice = ""
    @Published var computerChoice = ""
    @Published var choicesMade = false
    @Published var id = 1
    func makeChoice() {
          if userChoice != "" {
              computerChoice = choiceArray.randomElement() ?? "icon-scissors"
             
              print(computerChoice)
          }
      }
    
    func getScore() {
        if userChoice != "" && computerChoice != "" || userChoice == computerChoice {
            score = score + 0
            print("tie")
        }
        if userChoice == "icon-rock" && computerChoice == "icon-scissors" && score != 12 {
            score = score + 1
        }else if userChoice == "icon-paper" && computerChoice == "icon-rock" && score != 12 {
            score += 1
        }else if userChoice == "icon-scissors" && computerChoice == "icon-paper" && score != 12 {
            score += 1
        }else if  userChoice == "icon-scissors" && computerChoice == "icon-rock" {
            score -= 1
            print("You Lose")
        }else if userChoice == "icon-rock" && computerChoice == "icon-paper" {
            score -= 1
            print("You Lose")
        } else if userChoice == "icon-paper" && computerChoice == "icon-scissors" {
            score -= 1
            print("You Lose")
        }else if score == 0 {
            print("Game Over")
        }
        
      }
 
}

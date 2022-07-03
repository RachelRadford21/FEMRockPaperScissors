//
//  RulesSheetView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 6/25/22.
//

import SwiftUI

struct RulesSheetView: View {
    var body: some View {
        ZStack {
            Color.background2.ignoresSafeArea()
            ScrollView{
            Text("""
                    RULES:
                
                    Player chooses first.
                
                    If you win, you gain 1 point.
                    If I win, you lose 1 point.
                    If it is a tie, nobody gets a point
                
                    - Paper beats Rock
                    - Rock beats Scissors
                    - Scissors beats Paper
                
                    Good Luck!!

                """)
            .foregroundColor(Color.white)
            .font(.custom("barlow", size: 25))
            }
        }
       
    }
}

struct RulesSheetView_Previews: PreviewProvider {
    static var previews: some View {
        RulesSheetView()
    }
}

//
//  ScoreBoxView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 7/1/22.
//

import SwiftUI

struct ScoreBoxView: View {
    @EnvironmentObject var vm: ViewModel
 
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(Color.white)
            .frame(width: 100, height: 100, alignment: .trailing)
            .overlay(
                Text("SCORE")
                    .foregroundColor(Color.paper1)
                    .font(.custom("barlow", size: 15))
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
            )
            .padding(.bottom, 2)
           
            .padding(.trailing, -20)
            .overlay(
               
                Text("\(vm.score)")
                    .foregroundColor(Color.background1)
                    .font(.custom("barlowXBold", size: 45))
                    .padding(.top, 35)
                    .padding(.leading, 15)
                
            )
    }
    }


struct ScoreBoxView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBoxView()
            .environmentObject(ViewModel())
    }
}

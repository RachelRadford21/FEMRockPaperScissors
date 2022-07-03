//
//  SheetButtonView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 7/2/22.
//

import SwiftUI

struct SheetButtonView: View {
    @EnvironmentObject var vm: ViewModel
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        

        Text(vm.youLose ? "YOU LOSE" : vm.youWin ? "YOU WIN" : vm.tie ? "IT'S A TIE" : vm.gameOver ? "GAME OVER" : "")
                               .foregroundColor(Color.white)
                               .font(.custom("BarlowSemiCondensed-ExtraBold", size: 45))

        Button {
            vm.isPresented2 = false
        } label: {
            VStack{
               
            Text("PLAY AGAIN")
                .frame(width: 200, height: 55, alignment: .center)
                .font(.custom("BarlowSemiCondensed-Bold", size: 30))
                .foregroundColor(Color.background1)
                .background(Color.white)
                .cornerRadius(10)
            }
             
        }
    }
    
}


struct SheetButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SheetButtonView()
            .environmentObject(ViewModel())
            .environmentObject(ViewRouter())
    }
}

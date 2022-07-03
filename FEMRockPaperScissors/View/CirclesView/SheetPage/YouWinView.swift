//
//  YouWinView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 7/3/22.
//

import SwiftUI

struct YouWinView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
    
         if vm.userChoice == "icon-scissors" && vm.computerChoice == "icon-paper"{
             
             HStack(spacing: 5) {
                 CircleView(color1: Color.scissors1, color2: Color.scissors2, imageName: "icon-scissors")
                 YouPickedView()
                 Spacer()
                 CircleView(color1: Color.paper1, color2: Color.paper2, imageName: "icon-paper")
                 HousePickedView()
             }.padding(.horizontal, 30)
                 WinLabel()
         }else if vm.userChoice == "icon-paper" && vm.computerChoice == "icon-rock"   {
             HStack(spacing: 5) {
                 CircleView(color1: Color.paper1, color2: Color.paper2, imageName: "icon-paper")
                 YouPickedView()
                 Spacer()
                 CircleView(color1: Color.rock1, color2: Color.rock2, imageName: "icon-rock")
                 HousePickedView()
             }.padding(.horizontal, 30)
                WinLabel()
             
         }else if vm.userChoice == "icon-rock" && vm.computerChoice == "icon-scissors" {
             HStack(spacing: 5) {
                 CircleView(color1: Color.rock1, color2: Color.rock2, imageName: "icon-rock")
                 YouPickedView()
                 Spacer()
                 CircleView(color1: Color.scissors1, color2: Color.scissors2, imageName: "icon-scissors")
                 HousePickedView()
             }.padding(.horizontal, 30)
                 WinLabel()
         }
    }
}

struct YouWinView_Previews: PreviewProvider {
    static var previews: some View {
        YouWinView()
            .environmentObject(ViewModel())
    }
}

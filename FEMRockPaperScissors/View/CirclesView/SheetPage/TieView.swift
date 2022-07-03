//
//  TieView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 7/3/22.
//

import SwiftUI

struct TieView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        if vm.userChoice == "icon-rock" && vm.computerChoice == "icon-rock"{
                HStack {
                    CircleView(color1: Color.rock1, color2: Color.rock2, imageName: "icon-rock")
                    YouPickedView()
                    CircleView(color1: Color.rock1, color2: Color.rock2, imageName: "icon-rock")
                    HousePickedView()

                }
            }else if vm.userChoice == "icon-paper" && vm.computerChoice == "icon-paper" {
                HStack {
                    CircleView(color1: Color.paper1, color2: Color.paper2, imageName: "icon-paper")
                    YouPickedView()
                    CircleView(color1: Color.paper1, color2: Color.paper2, imageName: "icon-paper")
                    HousePickedView()

                }
            }else if vm.userChoice == "icon-scissors" && vm.computerChoice == "icon-scissors" {
                HStack {
                    CircleView(color1: Color.scissors1, color2: Color.scissors2, imageName: "icon-scissors")
                    YouPickedView()
                    CircleView(color1: Color.scissors1, color2: Color.scissors2, imageName: "icon-scissors")
                    HousePickedView()
                    
                }
            }
    }
}

struct TieView_Previews: PreviewProvider {
    static var previews: some View {
        TieView()
            .environmentObject(ViewModel())
    }
}
